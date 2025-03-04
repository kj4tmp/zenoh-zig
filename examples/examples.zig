const std = @import("std");

const zenoh = @import("zenoh");

fn publish() !void {
    var config: zenoh.c.z_owned_config_t = undefined;
    _ = zenoh.c.z_config_default(&config);
    defer zenoh.c.z_config_drop(zenoh.c.z_config_move(&config));

    var options: zenoh.c.z_open_options_t = undefined;
    zenoh.c.z_open_options_default(&options);
    var session: zenoh.c.z_owned_session_t = undefined;
    if (zenoh.c.z_open(
        &session,
        zenoh.c.z_config_move(&config),
        &options,
    ) != 0) {
        std.log.err("Failed to open zenoh session.", .{});
        return error.OpenSessionFailure;
    }
    defer zenoh.c.z_session_drop(zenoh.c.z_session_move(&session));

    var payload: zenoh.c.z_owned_bytes_t = undefined;
    _ = zenoh.c.z_bytes_from_static_str(&payload, "value");

    var key_expr: zenoh.c.z_view_keyexpr_t = undefined;
    _ = zenoh.c.z_view_keyexpr_from_str(&key_expr, "key/expression");

    _ = zenoh.c.z_put(zenoh.c.z_session_loan_mut(&session), zenoh.c.z_view_keyexpr_loan(&key_expr), zenoh.c.z_bytes_move(&payload), null);
}

var got_message: bool = false;

fn data_handler(sample: [*c]zenoh.c.struct_z_loaned_sample_t, arg: ?*anyopaque) callconv(.c) void {
    _ = sample;
    _ = arg;
    std.log.info("Got sample!", .{});
    got_message = true;
}

fn subscribe() !void {
    var config: zenoh.c.z_owned_config_t = undefined;
    _ = zenoh.c.z_config_default(&config);
    defer zenoh.c.z_config_drop(zenoh.c.z_config_move(&config));

    var options: zenoh.c.z_open_options_t = undefined;
    zenoh.c.z_open_options_default(&options);
    var session: zenoh.c.z_owned_session_t = undefined;
    if (zenoh.c.z_open(&session, zenoh.c.z_config_move(&config), &options) != 0) {
        std.log.err("Failed to open zenoh session.", .{});
        return error.OpenSessionFailure;
    }
    defer zenoh.c.z_session_drop(zenoh.c.z_session_move(&session));

    var callback: zenoh.c.z_owned_closure_sample_t = undefined;
    zenoh.c.z_closure_sample(&callback, &data_handler, null, null);

    var key_expr: zenoh.c.z_view_keyexpr_t = undefined;
    _ = zenoh.c.z_view_keyexpr_from_str(&key_expr, "key/expression");

    var subscriber: zenoh.c.z_owned_subscriber_t = undefined;

    if (zenoh.c.z_declare_subscriber(
        zenoh.c.z_session_loan_mut(&session),
        &subscriber,
        zenoh.c.z_view_keyexpr_loan(&key_expr),
        zenoh.c.z_closure_sample_move(&callback),
        null,
    ) != 0) {
        std.log.err("Failed to create zenoh subscriber", .{});
        return error.DeclareSubscriberFailure;
    }
    defer zenoh.c.z_subscriber_drop(zenoh.c.z_subscriber_move(&subscriber));

    var timer = std.time.Timer.start() catch @panic("timer unsupported");

    while (timer.read() <= std.time.ns_per_s * 10) {
        if (got_message) {
            break;
        }
        std.Thread.sleep(std.time.ns_per_s * 1);
    } else {
        return error.NoMessage;
    }
}

test "pubsub between two threads" {
    const sub_thread = try std.Thread.spawn(.{ .allocator = null }, subscribe, .{});
    std.Thread.sleep(std.time.ns_per_s * 1);
    const pub_thread = try std.Thread.spawn(.{ .allocator = null }, publish, .{});

    sub_thread.join();
    pub_thread.join();
    try std.testing.expect(got_message);
}
