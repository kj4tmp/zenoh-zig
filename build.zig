const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const zenoh = b.addModule("zenoh", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const zenoh_c_dep = switch (target.result.cpu.arch) {
        .x86_64 => switch (target.result.os.tag) {
            .windows => switch (target.result.abi) {
                .gnu => b.lazyDependency("zenoh_c_x86_64_windows_gnu", .{}),
                .msvc => b.lazyDependency("zenoh_c_x86_64_windows_msvc", .{}),
                else => @panic("unsupported target"),
            },
            .linux => switch (target.result.abi) {
                .musl => b.lazyDependency("zenoh_c_x86_64_linux_musl", .{}),
                .gnu => b.lazyDependency("zenoh_c_x86_64_linux_gnu", .{}),
                else => @panic("unsupported target"),
            },
            .macos => switch (target.result.abi) {
                .none => b.lazyDependency("zenoh_c_x86_64_macos_none", .{}),
                else => @panic("unsupported target"),
            },
            else => @panic("unsupported target"),
        },
        .aarch64 => switch (target.result.os.tag) {
            .linux => switch (target.result.abi) {
                .musl => b.lazyDependency("zenoh_c_aarch64_linux_musl", .{}),
                .gnu => b.lazyDependency("zenoh_c_aarch64_linux_gnu", .{}),
                else => @panic("unsupported target"),
            },
            .macos => switch (target.result.abi) {
                .none => b.lazyDependency("zenoh_c_aarch64_macos_none", .{}),
                else => @panic("unsupported target"),
            },
            else => @panic("unsupported target"),
        },
        else => @panic("unsupported target"),
    } orelse return;

    const zenoh_c_static_lib_path = switch (target.result.os.tag) {
        .linux, .macos => zenoh_c_dep.path("lib/libzenohc.a"),
        .windows => zenoh_c_dep.path("lib/libzenohc.lib"),
        else => @panic("unsupported target"),
    };

    zenoh.addObjectFile(zenoh_c_static_lib_path);
    zenoh.addIncludePath(zenoh_c_dep.path("include"));

    const lib_unit_tests = b.addTest(.{
        .root_module = zenoh,
    });
    lib_unit_tests.linkLibCpp();
    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    // examples
    const examples_tests = b.addTest(.{
        .root_source_file = b.path("examples/root.zig"),
        .target = target,
        .optimize = optimize,
    });
    examples_tests.root_module.addImport("zenoh", zenoh);
    const run_examples_tests = b.addRunArtifact(examples_tests);

    // binding generation
    const translate_c = b.addTranslateC(.{
        .link_libc = true,
        .optimize = optimize,
        .target = b.resolveTargetQuery(.{ .cpu_arch = .x86_64, .os_tag = .linux, .abi = .musl }),
        .root_source_file = zenoh_c_dep.path("include/zenoh.h"),
    });
    zenoh.addImport("zenoh_c", translate_c.createModule());
    const gen_tool = b.addExecutable(.{
        .name = "generate_bindings",
        .root_source_file = b.path("tools/generate_bindings.zig"),
        .target = target,
        .optimize = optimize,
    });
    gen_tool.root_module.addAnonymousImport("raw_translate_c", .{ .root_source_file = translate_c.getOutput() });

    const run_gen_tool = b.addRunArtifact(gen_tool);
    const generated_file = run_gen_tool.addOutputFileArg("c.zig");
    const update_source = b.addUpdateSourceFiles();
    update_source.addCopyFileToSource(generated_file, "src/c.zig");
    const gen_step = b.step("gen", "Generate bindings from the zenoh-c dependency, modifies source files!");
    gen_step.dependOn(&run_gen_tool.step);
    gen_step.dependOn(&update_source.step);

    // default step
    b.default_step.dependOn(test_step);
    b.default_step.dependOn(&run_examples_tests.step);
}
