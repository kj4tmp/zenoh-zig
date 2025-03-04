pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;

pub const Z_ALLOC_ERROR_NEED_DEFRAGMENT: c_int = 0;
pub const Z_ALLOC_ERROR_OUT_OF_MEMORY: c_int = 1;
pub const Z_ALLOC_ERROR_OTHER: c_int = 2;
pub const enum_z_alloc_error_t = c_uint;
pub const z_alloc_error_t = enum_z_alloc_error_t;
pub const Z_LAYOUT_ERROR_INCORRECT_LAYOUT_ARGS: c_int = 0;
pub const Z_LAYOUT_ERROR_PROVIDER_INCOMPATIBLE_LAYOUT: c_int = 1;
pub const enum_z_layout_error_t = c_uint;
pub const z_layout_error_t = enum_z_layout_error_t;
pub const ZC_BUF_ALLOC_STATUS_OK: c_int = 0;
pub const ZC_BUF_ALLOC_STATUS_ALLOC_ERROR: c_int = 1;
pub const enum_zc_buf_alloc_status_t = c_uint;
pub const zc_buf_alloc_status_t = enum_zc_buf_alloc_status_t;
pub const ZC_BUF_LAYOUT_ALLOC_STATUS_OK: c_int = 0;
pub const ZC_BUF_LAYOUT_ALLOC_STATUS_ALLOC_ERROR: c_int = 1;
pub const ZC_BUF_LAYOUT_ALLOC_STATUS_LAYOUT_ERROR: c_int = 2;
pub const enum_zc_buf_layout_alloc_status_t = c_uint;
pub const zc_buf_layout_alloc_status_t = enum_zc_buf_layout_alloc_status_t;
pub const struct_z_owned_shm_mut_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_shm_mut_t = struct_z_owned_shm_mut_t;
pub const struct_z_buf_alloc_result_t = extern struct {
    status: enum_zc_buf_alloc_status_t = @import("std").mem.zeroes(enum_zc_buf_alloc_status_t),
    buf: struct_z_owned_shm_mut_t = @import("std").mem.zeroes(struct_z_owned_shm_mut_t),
    @"error": enum_z_alloc_error_t = @import("std").mem.zeroes(enum_z_alloc_error_t),
};
pub const z_buf_alloc_result_t = struct_z_buf_alloc_result_t;
pub const struct_z_loaned_alloc_layout_t = extern struct {
    _0: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const z_loaned_alloc_layout_t = struct_z_loaned_alloc_layout_t;
pub const struct_z_owned_alloc_layout_t = extern struct {
    _0: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const z_owned_alloc_layout_t = struct_z_owned_alloc_layout_t;
pub const struct_z_loaned_shm_provider_t = extern struct {
    _0: [240]u8 = @import("std").mem.zeroes([240]u8),
};
pub const z_loaned_shm_provider_t = struct_z_loaned_shm_provider_t;
pub const struct_z_alloc_alignment_t = extern struct {
    pow: u8 = @import("std").mem.zeroes(u8),
};
pub const z_alloc_alignment_t = struct_z_alloc_alignment_t;
pub const struct_zc_threadsafe_context_data_t = extern struct {
    ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const zc_threadsafe_context_data_t = struct_zc_threadsafe_context_data_t;
pub const struct_zc_threadsafe_context_t = extern struct {
    context: struct_zc_threadsafe_context_data_t = @import("std").mem.zeroes(struct_zc_threadsafe_context_data_t),
    delete_fn: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const zc_threadsafe_context_t = struct_zc_threadsafe_context_t;
pub const struct_z_loaned_bytes_t = extern struct {
    _0: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const z_loaned_bytes_t = struct_z_loaned_bytes_t;
pub const struct_z_loaned_shm_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_shm_t = struct_z_loaned_shm_t;
pub const struct_z_owned_bytes_t = extern struct {
    _0: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const z_owned_bytes_t = struct_z_owned_bytes_t;
pub const struct_z_loaned_slice_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_slice_t = struct_z_loaned_slice_t;
pub const struct_z_loaned_string_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_string_t = struct_z_loaned_string_t;
pub const struct_z_owned_shm_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_shm_t = struct_z_owned_shm_t;
pub const struct_z_owned_slice_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_slice_t = struct_z_owned_slice_t;
pub const struct_z_owned_string_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_string_t = struct_z_owned_string_t;
pub const struct_z_view_slice_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_view_slice_t = struct_z_view_slice_t;
pub const struct_z_bytes_reader_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_bytes_reader_t = struct_z_bytes_reader_t;
pub const struct_z_loaned_bytes_writer_t = extern struct {
    _0: [64]u8 = @import("std").mem.zeroes([64]u8),
};
pub const z_loaned_bytes_writer_t = struct_z_loaned_bytes_writer_t;
pub const struct_z_owned_bytes_writer_t = extern struct {
    _0: [64]u8 = @import("std").mem.zeroes([64]u8),
};
pub const z_owned_bytes_writer_t = struct_z_owned_bytes_writer_t;
pub const struct_z_owned_chunk_alloc_result_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_chunk_alloc_result_t = struct_z_owned_chunk_alloc_result_t;
pub const z_segment_id_t = u32;
pub const z_chunk_id_t = u32;
pub const struct_z_chunk_descriptor_t = extern struct {
    segment: z_segment_id_t = @import("std").mem.zeroes(z_segment_id_t),
    chunk: z_chunk_id_t = @import("std").mem.zeroes(z_chunk_id_t),
    len: usize = @import("std").mem.zeroes(usize),
};
pub const z_chunk_descriptor_t = struct_z_chunk_descriptor_t;
pub const struct_z_allocated_chunk_t = extern struct {
    descriptpr: struct_z_chunk_descriptor_t = @import("std").mem.zeroes(struct_z_chunk_descriptor_t),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const z_allocated_chunk_t = struct_z_allocated_chunk_t;
pub const struct_z_loaned_session_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_session_t = struct_z_loaned_session_t;
pub const struct_zc_owned_concurrent_close_handle_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const zc_owned_concurrent_close_handle_t = struct_zc_owned_concurrent_close_handle_t;
pub const struct_z_loaned_hello_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_loaned_hello_t = struct_z_loaned_hello_t;
pub const struct_z_loaned_closure_hello_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_hello_t = struct_z_loaned_closure_hello_t;
pub const struct_z_loaned_closure_matching_status_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_matching_status_t = struct_z_loaned_closure_matching_status_t;
pub const struct_z_loaned_query_t = extern struct {
    _0: [144]u8 = @import("std").mem.zeroes([144]u8),
};
pub const z_loaned_query_t = struct_z_loaned_query_t;
pub const struct_z_loaned_closure_query_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_query_t = struct_z_loaned_closure_query_t;
pub const struct_z_loaned_reply_t = extern struct {
    _0: [256]u8 = @import("std").mem.zeroes([256]u8),
};
pub const z_loaned_reply_t = struct_z_loaned_reply_t;
pub const struct_z_loaned_closure_reply_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_reply_t = struct_z_loaned_closure_reply_t;
pub const struct_z_loaned_sample_t = extern struct {
    _0: [232]u8 = @import("std").mem.zeroes([232]u8),
};
pub const z_loaned_sample_t = struct_z_loaned_sample_t;
pub const struct_z_loaned_closure_sample_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_sample_t = struct_z_loaned_closure_sample_t;
pub const struct_z_id_t = extern struct {
    id: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_id_t = struct_z_id_t;
pub const struct_z_loaned_closure_zid_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const z_loaned_closure_zid_t = struct_z_loaned_closure_zid_t;
pub const struct_z_owned_condvar_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_condvar_t = struct_z_owned_condvar_t;
pub const struct_z_loaned_condvar_t = extern struct {
    _0: [4]u8 = @import("std").mem.zeroes([4]u8),
};
pub const z_loaned_condvar_t = struct_z_loaned_condvar_t;
pub const struct_z_loaned_mutex_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_loaned_mutex_t = struct_z_loaned_mutex_t;
pub const struct_z_owned_config_t = extern struct {
    _0: [1840]u8 = @import("std").mem.zeroes([1840]u8),
};
pub const z_owned_config_t = struct_z_owned_config_t;
pub const struct_z_loaned_config_t = extern struct {
    _0: [1840]u8 = @import("std").mem.zeroes([1840]u8),
};
pub const z_loaned_config_t = struct_z_loaned_config_t;
pub const struct_z_loaned_keyexpr_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_keyexpr_t = struct_z_loaned_keyexpr_t;
pub const struct_z_owned_keyexpr_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_keyexpr_t = struct_z_owned_keyexpr_t;
pub const struct_z_owned_publisher_t = extern struct {
    _0: [112]u8 = @import("std").mem.zeroes([112]u8),
};
pub const z_owned_publisher_t = struct_z_owned_publisher_t;
pub const struct_z_owned_encoding_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_owned_encoding_t = struct_z_owned_encoding_t;
pub const struct_z_owned_querier_t = extern struct {
    _0: [80]u8 = @import("std").mem.zeroes([80]u8),
};
pub const z_owned_querier_t = struct_z_owned_querier_t;
pub const struct_z_owned_queryable_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_owned_queryable_t = struct_z_owned_queryable_t;
pub const struct_z_owned_subscriber_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_owned_subscriber_t = struct_z_owned_subscriber_t;
pub const struct_z_timestamp_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_timestamp_t = struct_z_timestamp_t;
pub const struct_z_loaned_encoding_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_loaned_encoding_t = struct_z_loaned_encoding_t;
pub const struct_z_entity_global_id_t = extern struct {
    _0: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const z_entity_global_id_t = struct_z_entity_global_id_t;
pub const struct_z_owned_fifo_handler_query_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_fifo_handler_query_t = struct_z_owned_fifo_handler_query_t;
pub const struct_z_owned_fifo_handler_reply_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_fifo_handler_reply_t = struct_z_owned_fifo_handler_reply_t;
pub const struct_z_owned_fifo_handler_sample_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_fifo_handler_sample_t = struct_z_owned_fifo_handler_sample_t;
pub const struct_z_loaned_fifo_handler_query_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_fifo_handler_query_t = struct_z_loaned_fifo_handler_query_t;
pub const struct_z_owned_query_t = extern struct {
    _0: [144]u8 = @import("std").mem.zeroes([144]u8),
};
pub const z_owned_query_t = struct_z_owned_query_t;
pub const struct_z_loaned_fifo_handler_reply_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_fifo_handler_reply_t = struct_z_loaned_fifo_handler_reply_t;
pub const struct_z_owned_reply_t = extern struct {
    _0: [256]u8 = @import("std").mem.zeroes([256]u8),
};
pub const z_owned_reply_t = struct_z_owned_reply_t;
pub const struct_z_loaned_fifo_handler_sample_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_fifo_handler_sample_t = struct_z_loaned_fifo_handler_sample_t;
pub const struct_z_owned_sample_t = extern struct {
    _0: [232]u8 = @import("std").mem.zeroes([232]u8),
};
pub const z_owned_sample_t = struct_z_owned_sample_t;
pub const struct_z_owned_source_info_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_owned_source_info_t = struct_z_owned_source_info_t;
pub const struct_z_owned_hello_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_owned_hello_t = struct_z_owned_hello_t;
pub const struct_z_owned_string_array_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_owned_string_array_t = struct_z_owned_string_array_t;
pub const struct_z_owned_liveliness_token_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_owned_liveliness_token_t = struct_z_owned_liveliness_token_t;
pub const struct_z_owned_matching_listener_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_owned_matching_listener_t = struct_z_owned_matching_listener_t;
pub const struct_z_owned_memory_layout_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_owned_memory_layout_t = struct_z_owned_memory_layout_t;
pub const struct_z_owned_mutex_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_owned_mutex_t = struct_z_owned_mutex_t;
pub const struct_z_owned_reply_err_t = extern struct {
    _0: [88]u8 = @import("std").mem.zeroes([88]u8),
};
pub const z_owned_reply_err_t = struct_z_owned_reply_err_t;
pub const struct_z_owned_ring_handler_query_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_ring_handler_query_t = struct_z_owned_ring_handler_query_t;
pub const struct_z_owned_ring_handler_reply_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_ring_handler_reply_t = struct_z_owned_ring_handler_reply_t;
pub const struct_z_owned_ring_handler_sample_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_ring_handler_sample_t = struct_z_owned_ring_handler_sample_t;
pub const struct_z_owned_session_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_session_t = struct_z_owned_session_t;
pub const struct_z_owned_shm_client_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_owned_shm_client_t = struct_z_owned_shm_client_t;
pub const struct_z_owned_shm_client_storage_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_owned_shm_client_storage_t = struct_z_owned_shm_client_storage_t;
pub const struct_z_owned_shm_provider_t = extern struct {
    _0: [240]u8 = @import("std").mem.zeroes([240]u8),
};
pub const z_owned_shm_provider_t = struct_z_owned_shm_provider_t;
pub const struct_z_owned_task_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_owned_task_t = struct_z_owned_task_t;
pub const struct_z_view_string_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_view_string_t = struct_z_view_string_t;
pub const struct_z_loaned_liveliness_token_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_loaned_liveliness_token_t = struct_z_loaned_liveliness_token_t;
pub const struct_z_loaned_memory_layout_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_loaned_memory_layout_t = struct_z_loaned_memory_layout_t;
pub const struct_z_loaned_shm_client_storage_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_shm_client_storage_t = struct_z_loaned_shm_client_storage_t;
pub const struct_z_loaned_publisher_t = extern struct {
    _0: [112]u8 = @import("std").mem.zeroes([112]u8),
};
pub const z_loaned_publisher_t = struct_z_loaned_publisher_t;
pub const struct_z_loaned_querier_t = extern struct {
    _0: [80]u8 = @import("std").mem.zeroes([80]u8),
};
pub const z_loaned_querier_t = struct_z_loaned_querier_t;
pub const struct_z_loaned_queryable_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const z_loaned_queryable_t = struct_z_loaned_queryable_t;
pub const struct_z_loaned_reply_err_t = extern struct {
    _0: [88]u8 = @import("std").mem.zeroes([88]u8),
};
pub const z_loaned_reply_err_t = struct_z_loaned_reply_err_t;
pub const struct_z_loaned_ring_handler_query_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_ring_handler_query_t = struct_z_loaned_ring_handler_query_t;
pub const struct_z_loaned_ring_handler_reply_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_ring_handler_reply_t = struct_z_loaned_ring_handler_reply_t;
pub const struct_z_loaned_ring_handler_sample_t = extern struct {
    _0: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const z_loaned_ring_handler_sample_t = struct_z_loaned_ring_handler_sample_t;
pub const struct_z_loaned_source_info_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_source_info_t = struct_z_loaned_source_info_t;
pub const struct_zc_shm_segment_callbacks_t = extern struct {
    map_fn: ?*const fn (z_chunk_id_t, ?*anyopaque) callconv(.c) [*c]u8 = @import("std").mem.zeroes(?*const fn (z_chunk_id_t, ?*anyopaque) callconv(.c) [*c]u8),
};
pub const zc_shm_segment_callbacks_t = struct_zc_shm_segment_callbacks_t;
pub const struct_z_shm_segment_t = extern struct {
    context: struct_zc_threadsafe_context_t = @import("std").mem.zeroes(struct_zc_threadsafe_context_t),
    callbacks: struct_zc_shm_segment_callbacks_t = @import("std").mem.zeroes(struct_zc_shm_segment_callbacks_t),
};
pub const z_shm_segment_t = struct_z_shm_segment_t;
pub const struct_zc_shm_client_callbacks_t = extern struct {
    attach_fn: ?*const fn ([*c]struct_z_shm_segment_t, z_segment_id_t, ?*anyopaque) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]struct_z_shm_segment_t, z_segment_id_t, ?*anyopaque) callconv(.c) bool),
};
pub const zc_shm_client_callbacks_t = struct_zc_shm_client_callbacks_t;
pub const struct_zc_loaned_shm_client_list_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const zc_loaned_shm_client_list_t = struct_zc_loaned_shm_client_list_t;
pub const struct_z_loaned_shm_mut_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_loaned_shm_mut_t = struct_z_loaned_shm_mut_t;
pub const struct_z_buf_layout_alloc_result_t = extern struct {
    status: enum_zc_buf_layout_alloc_status_t = @import("std").mem.zeroes(enum_zc_buf_layout_alloc_status_t),
    buf: struct_z_owned_shm_mut_t = @import("std").mem.zeroes(struct_z_owned_shm_mut_t),
    alloc_error: enum_z_alloc_error_t = @import("std").mem.zeroes(enum_z_alloc_error_t),
    layout_error: enum_z_layout_error_t = @import("std").mem.zeroes(enum_z_layout_error_t),
};
pub const z_buf_layout_alloc_result_t = struct_z_buf_layout_alloc_result_t;
pub const struct_zc_context_t = extern struct {
    context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    delete_fn: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const zc_context_t = struct_zc_context_t;
pub const struct_zc_shm_provider_backend_callbacks_t = extern struct {
    alloc_fn: ?*const fn ([*c]struct_z_owned_chunk_alloc_result_t, [*c]const struct_z_loaned_memory_layout_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_owned_chunk_alloc_result_t, [*c]const struct_z_loaned_memory_layout_t, ?*anyopaque) callconv(.c) void),
    free_fn: ?*const fn ([*c]const struct_z_chunk_descriptor_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const struct_z_chunk_descriptor_t, ?*anyopaque) callconv(.c) void),
    defragment_fn: ?*const fn (?*anyopaque) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) usize),
    available_fn: ?*const fn (?*anyopaque) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) usize),
    layout_for_fn: ?*const fn ([*c]struct_z_owned_memory_layout_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_owned_memory_layout_t, ?*anyopaque) callconv(.c) void),
};
pub const zc_shm_provider_backend_callbacks_t = struct_zc_shm_provider_backend_callbacks_t;
pub const struct_z_loaned_string_array_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_loaned_string_array_t = struct_z_loaned_string_array_t;
pub const struct_z_loaned_subscriber_t = extern struct {
    _0: [48]u8 = @import("std").mem.zeroes([48]u8),
};
pub const z_loaned_subscriber_t = struct_z_loaned_subscriber_t;
pub const struct_z_view_keyexpr_t = extern struct {
    _0: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const z_view_keyexpr_t = struct_z_view_keyexpr_t;
pub const struct_zc_loaned_closure_log_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const zc_loaned_closure_log_t = struct_zc_loaned_closure_log_t;
pub const struct_zc_owned_shm_client_list_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const zc_owned_shm_client_list_t = struct_zc_owned_shm_client_list_t;
pub const struct_ze_loaned_advanced_publisher_t = extern struct {
    _0: [200]u8 = @import("std").mem.zeroes([200]u8),
};
pub const ze_loaned_advanced_publisher_t = struct_ze_loaned_advanced_publisher_t;
pub const struct_ze_owned_advanced_publisher_t = extern struct {
    _0: [200]u8 = @import("std").mem.zeroes([200]u8),
};
pub const ze_owned_advanced_publisher_t = struct_ze_owned_advanced_publisher_t;
pub const struct_ze_loaned_advanced_subscriber_t = extern struct {
    _0: [152]u8 = @import("std").mem.zeroes([152]u8),
};
pub const ze_loaned_advanced_subscriber_t = struct_ze_loaned_advanced_subscriber_t;
pub const struct_ze_owned_advanced_subscriber_t = extern struct {
    _0: [152]u8 = @import("std").mem.zeroes([152]u8),
};
pub const ze_owned_advanced_subscriber_t = struct_ze_owned_advanced_subscriber_t;
pub const struct_ze_owned_publication_cache_t = extern struct {
    _0: [96]u8 = @import("std").mem.zeroes([96]u8),
};
pub const ze_owned_publication_cache_t = struct_ze_owned_publication_cache_t;
pub const struct_ze_owned_querying_subscriber_t = extern struct {
    _0: [80]u8 = @import("std").mem.zeroes([80]u8),
};
pub const ze_owned_querying_subscriber_t = struct_ze_owned_querying_subscriber_t;
pub const struct_ze_deserializer_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const ze_deserializer_t = struct_ze_deserializer_t;
pub const struct_ze_owned_serializer_t = extern struct {
    _0: [64]u8 = @import("std").mem.zeroes([64]u8),
};
pub const ze_owned_serializer_t = struct_ze_owned_serializer_t;
pub const struct_ze_loaned_querying_subscriber_t = extern struct {
    _0: [80]u8 = @import("std").mem.zeroes([80]u8),
};
pub const ze_loaned_querying_subscriber_t = struct_ze_loaned_querying_subscriber_t;
pub const struct_ze_loaned_serializer_t = extern struct {
    _0: [64]u8 = @import("std").mem.zeroes([64]u8),
};
pub const ze_loaned_serializer_t = struct_ze_loaned_serializer_t;
pub const Z_CONGESTION_CONTROL_BLOCK: c_int = 0;
pub const Z_CONGESTION_CONTROL_DROP: c_int = 1;
pub const enum_z_congestion_control_t = c_uint;
pub const z_congestion_control_t = enum_z_congestion_control_t;
pub const Z_CONSOLIDATION_MODE_AUTO: c_int = -1;
pub const Z_CONSOLIDATION_MODE_NONE: c_int = 0;
pub const Z_CONSOLIDATION_MODE_MONOTONIC: c_int = 1;
pub const Z_CONSOLIDATION_MODE_LATEST: c_int = 2;
pub const enum_z_consolidation_mode_t = c_int;
pub const z_consolidation_mode_t = enum_z_consolidation_mode_t;
pub const Z_KEYEXPR_INTERSECTION_LEVEL_DISJOINT: c_int = 0;
pub const Z_KEYEXPR_INTERSECTION_LEVEL_INTERSECTS: c_int = 1;
pub const Z_KEYEXPR_INTERSECTION_LEVEL_INCLUDES: c_int = 2;
pub const Z_KEYEXPR_INTERSECTION_LEVEL_EQUALS: c_int = 3;
pub const enum_z_keyexpr_intersection_level_t = c_uint;
pub const z_keyexpr_intersection_level_t = enum_z_keyexpr_intersection_level_t;
pub const Z_PRIORITY_REAL_TIME: c_int = 1;
pub const Z_PRIORITY_INTERACTIVE_HIGH: c_int = 2;
pub const Z_PRIORITY_INTERACTIVE_LOW: c_int = 3;
pub const Z_PRIORITY_DATA_HIGH: c_int = 4;
pub const Z_PRIORITY_DATA: c_int = 5;
pub const Z_PRIORITY_DATA_LOW: c_int = 6;
pub const Z_PRIORITY_BACKGROUND: c_int = 7;
pub const enum_z_priority_t = c_uint;
pub const z_priority_t = enum_z_priority_t;
pub const Z_QUERY_TARGET_BEST_MATCHING: c_int = 0;
pub const Z_QUERY_TARGET_ALL: c_int = 1;
pub const Z_QUERY_TARGET_ALL_COMPLETE: c_int = 2;
pub const enum_z_query_target_t = c_uint;
pub const z_query_target_t = enum_z_query_target_t;
pub const Z_RELIABILITY_BEST_EFFORT: c_int = 0;
pub const Z_RELIABILITY_RELIABLE: c_int = 1;
pub const enum_z_reliability_t = c_uint;
pub const z_reliability_t = enum_z_reliability_t;
pub const Z_SAMPLE_KIND_PUT: c_int = 0;
pub const Z_SAMPLE_KIND_DELETE: c_int = 1;
pub const enum_z_sample_kind_t = c_uint;
pub const z_sample_kind_t = enum_z_sample_kind_t;
pub const Z_WHAT_ROUTER: c_int = 1;
pub const Z_WHAT_PEER: c_int = 2;
pub const Z_WHAT_CLIENT: c_int = 4;
pub const Z_WHAT_ROUTER_PEER: c_int = 3;
pub const Z_WHAT_ROUTER_CLIENT: c_int = 5;
pub const Z_WHAT_PEER_CLIENT: c_int = 6;
pub const Z_WHAT_ROUTER_PEER_CLIENT: c_int = 7;
pub const enum_z_what_t = c_uint;
pub const z_what_t = enum_z_what_t;
pub const Z_WHATAMI_ROUTER: c_int = 1;
pub const Z_WHATAMI_PEER: c_int = 2;
pub const Z_WHATAMI_CLIENT: c_int = 4;
pub const enum_z_whatami_t = c_uint;
pub const z_whatami_t = enum_z_whatami_t;
pub const ZC_LOCALITY_ANY: c_int = 0;
pub const ZC_LOCALITY_SESSION_LOCAL: c_int = 1;
pub const ZC_LOCALITY_REMOTE: c_int = 2;
pub const enum_zc_locality_t = c_uint;
pub const zc_locality_t = enum_zc_locality_t;
pub const ZC_LOG_SEVERITY_TRACE: c_int = 0;
pub const ZC_LOG_SEVERITY_DEBUG: c_int = 1;
pub const ZC_LOG_SEVERITY_INFO: c_int = 2;
pub const ZC_LOG_SEVERITY_WARN: c_int = 3;
pub const ZC_LOG_SEVERITY_ERROR: c_int = 4;
pub const enum_zc_log_severity_t = c_uint;
pub const zc_log_severity_t = enum_zc_log_severity_t;
pub const ZC_REPLY_KEYEXPR_ANY: c_int = 0;
pub const ZC_REPLY_KEYEXPR_MATCHING_QUERY: c_int = 1;
pub const enum_zc_reply_keyexpr_t = c_uint;
pub const zc_reply_keyexpr_t = enum_zc_reply_keyexpr_t;
pub const struct_z_moved_alloc_layout_t = extern struct {
    _this: struct_z_owned_alloc_layout_t = @import("std").mem.zeroes(struct_z_owned_alloc_layout_t),
};
pub const z_moved_alloc_layout_t = struct_z_moved_alloc_layout_t;
pub const z_result_t = i8;
pub const struct_z_moved_bytes_t = extern struct {
    _this: struct_z_owned_bytes_t = @import("std").mem.zeroes(struct_z_owned_bytes_t),
};
pub const z_moved_bytes_t = struct_z_moved_bytes_t;
pub const struct_z_moved_shm_t = extern struct {
    _this: struct_z_owned_shm_t = @import("std").mem.zeroes(struct_z_owned_shm_t),
};
pub const z_moved_shm_t = struct_z_moved_shm_t;
pub const struct_z_moved_shm_mut_t = extern struct {
    _this: struct_z_owned_shm_mut_t = @import("std").mem.zeroes(struct_z_owned_shm_mut_t),
};
pub const z_moved_shm_mut_t = struct_z_moved_shm_mut_t;
pub const struct_z_moved_slice_t = extern struct {
    _this: struct_z_owned_slice_t = @import("std").mem.zeroes(struct_z_owned_slice_t),
};
pub const z_moved_slice_t = struct_z_moved_slice_t;
pub const struct_z_moved_string_t = extern struct {
    _this: struct_z_owned_string_t = @import("std").mem.zeroes(struct_z_owned_string_t),
};
pub const z_moved_string_t = struct_z_moved_string_t;
pub const struct_z_bytes_slice_iterator_t = extern struct {
    _0: [24]u8 = @import("std").mem.zeroes([24]u8),
};
pub const z_bytes_slice_iterator_t = struct_z_bytes_slice_iterator_t;
pub const struct_z_moved_bytes_writer_t = extern struct {
    _this: struct_z_owned_bytes_writer_t = @import("std").mem.zeroes(struct_z_owned_bytes_writer_t),
};
pub const z_moved_bytes_writer_t = struct_z_moved_bytes_writer_t;
pub const struct_z_moved_chunk_alloc_result_t = extern struct {
    _this: struct_z_owned_chunk_alloc_result_t = @import("std").mem.zeroes(struct_z_owned_chunk_alloc_result_t),
};
pub const z_moved_chunk_alloc_result_t = struct_z_moved_chunk_alloc_result_t;
pub const struct_z_clock_t = extern struct {
    t: u64 = @import("std").mem.zeroes(u64),
    t_base: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const z_clock_t = struct_z_clock_t;
pub const struct_z_close_options_t = extern struct {
    internal_timeout_ms: u32 = @import("std").mem.zeroes(u32),
    internal_out_concurrent: [*c]struct_zc_owned_concurrent_close_handle_t = @import("std").mem.zeroes([*c]struct_zc_owned_concurrent_close_handle_t),
};
pub const z_close_options_t = struct_z_close_options_t;
pub const struct_z_owned_closure_hello_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]struct_z_loaned_hello_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_loaned_hello_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_hello_t = struct_z_owned_closure_hello_t;
pub const struct_z_moved_closure_hello_t = extern struct {
    _this: struct_z_owned_closure_hello_t = @import("std").mem.zeroes(struct_z_owned_closure_hello_t),
};
pub const z_moved_closure_hello_t = struct_z_moved_closure_hello_t;
pub const struct_z_matching_status_t = extern struct {
    matching: bool = @import("std").mem.zeroes(bool),
};
pub const z_matching_status_t = struct_z_matching_status_t;
pub const struct_z_owned_closure_matching_status_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]const struct_z_matching_status_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const struct_z_matching_status_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_matching_status_t = struct_z_owned_closure_matching_status_t;
pub const struct_z_moved_closure_matching_status_t = extern struct {
    _this: struct_z_owned_closure_matching_status_t = @import("std").mem.zeroes(struct_z_owned_closure_matching_status_t),
};
pub const z_moved_closure_matching_status_t = struct_z_moved_closure_matching_status_t;
pub const struct_z_owned_closure_query_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]struct_z_loaned_query_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_loaned_query_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_query_t = struct_z_owned_closure_query_t;
pub const struct_z_moved_closure_query_t = extern struct {
    _this: struct_z_owned_closure_query_t = @import("std").mem.zeroes(struct_z_owned_closure_query_t),
};
pub const z_moved_closure_query_t = struct_z_moved_closure_query_t;
pub const struct_z_owned_closure_reply_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]struct_z_loaned_reply_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_loaned_reply_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_reply_t = struct_z_owned_closure_reply_t;
pub const struct_z_moved_closure_reply_t = extern struct {
    _this: struct_z_owned_closure_reply_t = @import("std").mem.zeroes(struct_z_owned_closure_reply_t),
};
pub const z_moved_closure_reply_t = struct_z_moved_closure_reply_t;
pub const struct_z_owned_closure_sample_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]struct_z_loaned_sample_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_z_loaned_sample_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_sample_t = struct_z_owned_closure_sample_t;
pub const struct_z_moved_closure_sample_t = extern struct {
    _this: struct_z_owned_closure_sample_t = @import("std").mem.zeroes(struct_z_owned_closure_sample_t),
};
pub const z_moved_closure_sample_t = struct_z_moved_closure_sample_t;
pub const struct_z_owned_closure_zid_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]const struct_z_id_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const struct_z_id_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const z_owned_closure_zid_t = struct_z_owned_closure_zid_t;
pub const struct_z_moved_closure_zid_t = extern struct {
    _this: struct_z_owned_closure_zid_t = @import("std").mem.zeroes(struct_z_owned_closure_zid_t),
};
pub const z_moved_closure_zid_t = struct_z_moved_closure_zid_t;
pub const struct_z_moved_condvar_t = extern struct {
    _this: struct_z_owned_condvar_t = @import("std").mem.zeroes(struct_z_owned_condvar_t),
};
pub const z_moved_condvar_t = struct_z_moved_condvar_t;
pub const struct_z_moved_config_t = extern struct {
    _this: struct_z_owned_config_t = @import("std").mem.zeroes(struct_z_owned_config_t),
};
pub const z_moved_config_t = struct_z_moved_config_t;
pub const struct_z_queryable_options_t = extern struct {
    complete: bool = @import("std").mem.zeroes(bool),
};
pub const z_queryable_options_t = struct_z_queryable_options_t;
pub const struct_z_subscriber_options_t = extern struct {
    allowed_origin: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
};
pub const z_subscriber_options_t = struct_z_subscriber_options_t;
pub const struct_z_moved_encoding_t = extern struct {
    _this: struct_z_owned_encoding_t = @import("std").mem.zeroes(struct_z_owned_encoding_t),
};
pub const z_moved_encoding_t = struct_z_moved_encoding_t;
pub const struct_z_publisher_options_t = extern struct {
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    reliability: enum_z_reliability_t = @import("std").mem.zeroes(enum_z_reliability_t),
    allowed_destination: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
};
pub const z_publisher_options_t = struct_z_publisher_options_t;
pub const struct_z_query_consolidation_t = extern struct {
    mode: enum_z_consolidation_mode_t = @import("std").mem.zeroes(enum_z_consolidation_mode_t),
};
pub const z_query_consolidation_t = struct_z_query_consolidation_t;
pub const struct_z_querier_options_t = extern struct {
    target: enum_z_query_target_t = @import("std").mem.zeroes(enum_z_query_target_t),
    consolidation: struct_z_query_consolidation_t = @import("std").mem.zeroes(struct_z_query_consolidation_t),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    allowed_destination: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
    accept_replies: enum_zc_reply_keyexpr_t = @import("std").mem.zeroes(enum_zc_reply_keyexpr_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    timeout_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const z_querier_options_t = struct_z_querier_options_t;
pub const struct_z_delete_options_t = extern struct {
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    timestamp: [*c]struct_z_timestamp_t = @import("std").mem.zeroes([*c]struct_z_timestamp_t),
    reliability: enum_z_reliability_t = @import("std").mem.zeroes(enum_z_reliability_t),
    allowed_destination: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
};
pub const z_delete_options_t = struct_z_delete_options_t;
pub const struct_z_moved_fifo_handler_query_t = extern struct {
    _this: struct_z_owned_fifo_handler_query_t = @import("std").mem.zeroes(struct_z_owned_fifo_handler_query_t),
};
pub const z_moved_fifo_handler_query_t = struct_z_moved_fifo_handler_query_t;
pub const struct_z_moved_fifo_handler_reply_t = extern struct {
    _this: struct_z_owned_fifo_handler_reply_t = @import("std").mem.zeroes(struct_z_owned_fifo_handler_reply_t),
};
pub const z_moved_fifo_handler_reply_t = struct_z_moved_fifo_handler_reply_t;
pub const struct_z_moved_fifo_handler_sample_t = extern struct {
    _this: struct_z_owned_fifo_handler_sample_t = @import("std").mem.zeroes(struct_z_owned_fifo_handler_sample_t),
};
pub const z_moved_fifo_handler_sample_t = struct_z_moved_fifo_handler_sample_t;
pub const struct_z_moved_source_info_t = extern struct {
    _this: struct_z_owned_source_info_t = @import("std").mem.zeroes(struct_z_owned_source_info_t),
};
pub const z_moved_source_info_t = struct_z_moved_source_info_t;
pub const struct_z_get_options_t = extern struct {
    target: enum_z_query_target_t = @import("std").mem.zeroes(enum_z_query_target_t),
    consolidation: struct_z_query_consolidation_t = @import("std").mem.zeroes(struct_z_query_consolidation_t),
    payload: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    allowed_destination: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
    accept_replies: enum_zc_reply_keyexpr_t = @import("std").mem.zeroes(enum_zc_reply_keyexpr_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
    timeout_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const z_get_options_t = struct_z_get_options_t;
pub const struct_z_moved_hello_t = extern struct {
    _this: struct_z_owned_hello_t = @import("std").mem.zeroes(struct_z_owned_hello_t),
};
pub const z_moved_hello_t = struct_z_moved_hello_t;
pub const struct_z_moved_keyexpr_t = extern struct {
    _this: struct_z_owned_keyexpr_t = @import("std").mem.zeroes(struct_z_owned_keyexpr_t),
};
pub const z_moved_keyexpr_t = struct_z_moved_keyexpr_t;
pub const struct_z_liveliness_subscriber_options_t = extern struct {
    history: bool = @import("std").mem.zeroes(bool),
};
pub const z_liveliness_subscriber_options_t = struct_z_liveliness_subscriber_options_t;
pub const struct_z_liveliness_token_options_t = extern struct {
    _dummy: u8 = @import("std").mem.zeroes(u8),
};
pub const z_liveliness_token_options_t = struct_z_liveliness_token_options_t;
pub const struct_z_liveliness_get_options_t = extern struct {
    timeout_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const z_liveliness_get_options_t = struct_z_liveliness_get_options_t;
pub const struct_z_moved_liveliness_token_t = extern struct {
    _this: struct_z_owned_liveliness_token_t = @import("std").mem.zeroes(struct_z_owned_liveliness_token_t),
};
pub const z_moved_liveliness_token_t = struct_z_moved_liveliness_token_t;
pub const struct_z_moved_matching_listener_t = extern struct {
    _this: struct_z_owned_matching_listener_t = @import("std").mem.zeroes(struct_z_owned_matching_listener_t),
};
pub const z_moved_matching_listener_t = struct_z_moved_matching_listener_t;
pub const struct_z_moved_memory_layout_t = extern struct {
    _this: struct_z_owned_memory_layout_t = @import("std").mem.zeroes(struct_z_owned_memory_layout_t),
};
pub const z_moved_memory_layout_t = struct_z_moved_memory_layout_t;
pub const struct_z_moved_mutex_t = extern struct {
    _this: struct_z_owned_mutex_t = @import("std").mem.zeroes(struct_z_owned_mutex_t),
};
pub const z_moved_mutex_t = struct_z_moved_mutex_t;
pub const struct_z_open_options_t = extern struct {
    _dummy: u8 = @import("std").mem.zeroes(u8),
};
pub const z_open_options_t = struct_z_open_options_t;
pub const struct_z_publisher_delete_options_t = extern struct {
    timestamp: [*c]const struct_z_timestamp_t = @import("std").mem.zeroes([*c]const struct_z_timestamp_t),
};
pub const z_publisher_delete_options_t = struct_z_publisher_delete_options_t;
pub const struct_z_moved_publisher_t = extern struct {
    _this: struct_z_owned_publisher_t = @import("std").mem.zeroes(struct_z_owned_publisher_t),
};
pub const z_moved_publisher_t = struct_z_moved_publisher_t;
pub const struct_z_publisher_put_options_t = extern struct {
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    timestamp: [*c]const struct_z_timestamp_t = @import("std").mem.zeroes([*c]const struct_z_timestamp_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
};
pub const z_publisher_put_options_t = struct_z_publisher_put_options_t;
pub const struct_z_put_options_t = extern struct {
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    timestamp: [*c]struct_z_timestamp_t = @import("std").mem.zeroes([*c]struct_z_timestamp_t),
    reliability: enum_z_reliability_t = @import("std").mem.zeroes(enum_z_reliability_t),
    allowed_destination: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
};
pub const z_put_options_t = struct_z_put_options_t;
pub const struct_z_moved_querier_t = extern struct {
    _this: struct_z_owned_querier_t = @import("std").mem.zeroes(struct_z_owned_querier_t),
};
pub const z_moved_querier_t = struct_z_moved_querier_t;
pub const struct_z_querier_get_options_t = extern struct {
    payload: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
};
pub const z_querier_get_options_t = struct_z_querier_get_options_t;
pub const struct_z_moved_query_t = extern struct {
    _this: struct_z_owned_query_t = @import("std").mem.zeroes(struct_z_owned_query_t),
};
pub const z_moved_query_t = struct_z_moved_query_t;
pub const struct_z_query_reply_options_t = extern struct {
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    timestamp: [*c]struct_z_timestamp_t = @import("std").mem.zeroes([*c]struct_z_timestamp_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
};
pub const z_query_reply_options_t = struct_z_query_reply_options_t;
pub const struct_z_query_reply_del_options_t = extern struct {
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
    timestamp: [*c]struct_z_timestamp_t = @import("std").mem.zeroes([*c]struct_z_timestamp_t),
    source_info: [*c]struct_z_moved_source_info_t = @import("std").mem.zeroes([*c]struct_z_moved_source_info_t),
    attachment: [*c]struct_z_moved_bytes_t = @import("std").mem.zeroes([*c]struct_z_moved_bytes_t),
};
pub const z_query_reply_del_options_t = struct_z_query_reply_del_options_t;
pub const struct_z_query_reply_err_options_t = extern struct {
    encoding: [*c]struct_z_moved_encoding_t = @import("std").mem.zeroes([*c]struct_z_moved_encoding_t),
};
pub const z_query_reply_err_options_t = struct_z_query_reply_err_options_t;
pub const struct_z_moved_queryable_t = extern struct {
    _this: struct_z_owned_queryable_t = @import("std").mem.zeroes(struct_z_owned_queryable_t),
};
pub const z_moved_queryable_t = struct_z_moved_queryable_t;
pub const struct_z_moved_reply_t = extern struct {
    _this: struct_z_owned_reply_t = @import("std").mem.zeroes(struct_z_owned_reply_t),
};
pub const z_moved_reply_t = struct_z_moved_reply_t;
pub const struct_z_moved_reply_err_t = extern struct {
    _this: struct_z_owned_reply_err_t = @import("std").mem.zeroes(struct_z_owned_reply_err_t),
};
pub const z_moved_reply_err_t = struct_z_moved_reply_err_t;
pub const struct_z_moved_ring_handler_query_t = extern struct {
    _this: struct_z_owned_ring_handler_query_t = @import("std").mem.zeroes(struct_z_owned_ring_handler_query_t),
};
pub const z_moved_ring_handler_query_t = struct_z_moved_ring_handler_query_t;
pub const struct_z_moved_ring_handler_reply_t = extern struct {
    _this: struct_z_owned_ring_handler_reply_t = @import("std").mem.zeroes(struct_z_owned_ring_handler_reply_t),
};
pub const z_moved_ring_handler_reply_t = struct_z_moved_ring_handler_reply_t;
pub const struct_z_moved_ring_handler_sample_t = extern struct {
    _this: struct_z_owned_ring_handler_sample_t = @import("std").mem.zeroes(struct_z_owned_ring_handler_sample_t),
};
pub const z_moved_ring_handler_sample_t = struct_z_moved_ring_handler_sample_t;
pub const struct_z_moved_sample_t = extern struct {
    _this: struct_z_owned_sample_t = @import("std").mem.zeroes(struct_z_owned_sample_t),
};
pub const z_moved_sample_t = struct_z_moved_sample_t;
pub const struct_z_scout_options_t = extern struct {
    timeout_ms: u64 = @import("std").mem.zeroes(u64),
    what: enum_z_what_t = @import("std").mem.zeroes(enum_z_what_t),
};
pub const z_scout_options_t = struct_z_scout_options_t;
pub const struct_z_moved_session_t = extern struct {
    _this: struct_z_owned_session_t = @import("std").mem.zeroes(struct_z_owned_session_t),
};
pub const z_moved_session_t = struct_z_moved_session_t;
pub const struct_z_moved_shm_client_t = extern struct {
    _this: struct_z_owned_shm_client_t = @import("std").mem.zeroes(struct_z_owned_shm_client_t),
};
pub const z_moved_shm_client_t = struct_z_moved_shm_client_t;
pub const struct_z_moved_shm_client_storage_t = extern struct {
    _this: struct_z_owned_shm_client_storage_t = @import("std").mem.zeroes(struct_z_owned_shm_client_storage_t),
};
pub const z_moved_shm_client_storage_t = struct_z_moved_shm_client_storage_t;
pub const struct_z_moved_shm_provider_t = extern struct {
    _this: struct_z_owned_shm_provider_t = @import("std").mem.zeroes(struct_z_owned_shm_provider_t),
};
pub const z_moved_shm_provider_t = struct_z_moved_shm_provider_t;
pub const z_protocol_id_t = u32;
pub const struct_z_moved_string_array_t = extern struct {
    _this: struct_z_owned_string_array_t = @import("std").mem.zeroes(struct_z_owned_string_array_t),
};
pub const z_moved_string_array_t = struct_z_moved_string_array_t;
pub const struct_z_moved_subscriber_t = extern struct {
    _this: struct_z_owned_subscriber_t = @import("std").mem.zeroes(struct_z_owned_subscriber_t),
};
pub const z_moved_subscriber_t = struct_z_moved_subscriber_t;
pub const struct_z_moved_task_t = extern struct {
    _this: struct_z_owned_task_t = @import("std").mem.zeroes(struct_z_owned_task_t),
};
pub const z_moved_task_t = struct_z_moved_task_t;
pub const struct_z_task_attr_t = extern struct {
    _0: usize = @import("std").mem.zeroes(usize),
};
pub const z_task_attr_t = struct_z_task_attr_t;
pub const struct_z_time_t = extern struct {
    t: u64 = @import("std").mem.zeroes(u64),
};
pub const z_time_t = struct_z_time_t;
pub const struct_zc_owned_closure_log_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn (enum_zc_log_severity_t, [*c]const struct_z_loaned_string_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (enum_zc_log_severity_t, [*c]const struct_z_loaned_string_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const zc_owned_closure_log_t = struct_zc_owned_closure_log_t;
pub const struct_zc_moved_closure_log_t = extern struct {
    _this: struct_zc_owned_closure_log_t = @import("std").mem.zeroes(struct_zc_owned_closure_log_t),
};
pub const zc_moved_closure_log_t = struct_zc_moved_closure_log_t;
pub const struct_zc_moved_concurrent_close_handle_t = extern struct {
    _this: struct_zc_owned_concurrent_close_handle_t = @import("std").mem.zeroes(struct_zc_owned_concurrent_close_handle_t),
};
pub const zc_moved_concurrent_close_handle_t = struct_zc_moved_concurrent_close_handle_t;
pub const struct_zc_internal_encoding_data_t = extern struct {
    id: u16 = @import("std").mem.zeroes(u16),
    schema_ptr: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    schema_len: usize = @import("std").mem.zeroes(usize),
};
pub const zc_internal_encoding_data_t = struct_zc_internal_encoding_data_t;
pub const struct_zc_moved_shm_client_list_t = extern struct {
    _this: struct_zc_owned_shm_client_list_t = @import("std").mem.zeroes(struct_zc_owned_shm_client_list_t),
};
pub const zc_moved_shm_client_list_t = struct_zc_moved_shm_client_list_t;
pub const struct_ze_advanced_publisher_cache_options_t = extern struct {
    is_enabled: bool = @import("std").mem.zeroes(bool),
    max_samples: usize = @import("std").mem.zeroes(usize),
    congestion_control: enum_z_congestion_control_t = @import("std").mem.zeroes(enum_z_congestion_control_t),
    priority: enum_z_priority_t = @import("std").mem.zeroes(enum_z_priority_t),
    is_express: bool = @import("std").mem.zeroes(bool),
};
pub const ze_advanced_publisher_cache_options_t = struct_ze_advanced_publisher_cache_options_t;
pub const struct_ze_advanced_publisher_delete_options_t = extern struct {
    delete_options: struct_z_publisher_delete_options_t = @import("std").mem.zeroes(struct_z_publisher_delete_options_t),
};
pub const ze_advanced_publisher_delete_options_t = struct_ze_advanced_publisher_delete_options_t;
pub const struct_ze_moved_advanced_publisher_t = extern struct {
    _this: struct_ze_owned_advanced_publisher_t = @import("std").mem.zeroes(struct_ze_owned_advanced_publisher_t),
};
pub const ze_moved_advanced_publisher_t = struct_ze_moved_advanced_publisher_t;
pub const struct_ze_advanced_publisher_sample_miss_detection_options_t = extern struct {
    is_enabled: bool = @import("std").mem.zeroes(bool),
    heartbeat_period_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const ze_advanced_publisher_sample_miss_detection_options_t = struct_ze_advanced_publisher_sample_miss_detection_options_t;
pub const struct_ze_advanced_publisher_options_t = extern struct {
    publisher_options: struct_z_publisher_options_t = @import("std").mem.zeroes(struct_z_publisher_options_t),
    cache: struct_ze_advanced_publisher_cache_options_t = @import("std").mem.zeroes(struct_ze_advanced_publisher_cache_options_t),
    sample_miss_detection: struct_ze_advanced_publisher_sample_miss_detection_options_t = @import("std").mem.zeroes(struct_ze_advanced_publisher_sample_miss_detection_options_t),
    publisher_detection: bool = @import("std").mem.zeroes(bool),
    publisher_detection_metadata: [*c]const struct_z_loaned_keyexpr_t = @import("std").mem.zeroes([*c]const struct_z_loaned_keyexpr_t),
};
pub const ze_advanced_publisher_options_t = struct_ze_advanced_publisher_options_t;
pub const struct_ze_advanced_publisher_put_options_t = extern struct {
    put_options: struct_z_publisher_put_options_t = @import("std").mem.zeroes(struct_z_publisher_put_options_t),
};
pub const ze_advanced_publisher_put_options_t = struct_ze_advanced_publisher_put_options_t;
pub const struct_ze_miss_t = extern struct {
    source: struct_z_entity_global_id_t = @import("std").mem.zeroes(struct_z_entity_global_id_t),
    nb: u32 = @import("std").mem.zeroes(u32),
};
pub const ze_miss_t = struct_ze_miss_t;
pub const struct_ze_owned_closure_miss_t = extern struct {
    _context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _call: ?*const fn ([*c]const struct_ze_miss_t, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const struct_ze_miss_t, ?*anyopaque) callconv(.c) void),
    _drop: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const ze_owned_closure_miss_t = struct_ze_owned_closure_miss_t;
pub const struct_ze_moved_closure_miss_t = extern struct {
    _this: struct_ze_owned_closure_miss_t = @import("std").mem.zeroes(struct_ze_owned_closure_miss_t),
};
pub const ze_moved_closure_miss_t = struct_ze_moved_closure_miss_t;
pub const struct_ze_owned_sample_miss_listener_t = extern struct {
    _0: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const ze_owned_sample_miss_listener_t = struct_ze_owned_sample_miss_listener_t;
pub const struct_ze_moved_advanced_subscriber_t = extern struct {
    _this: struct_ze_owned_advanced_subscriber_t = @import("std").mem.zeroes(struct_ze_owned_advanced_subscriber_t),
};
pub const ze_moved_advanced_subscriber_t = struct_ze_moved_advanced_subscriber_t;
pub const struct_ze_advanced_subscriber_history_options_t = extern struct {
    is_enabled: bool = @import("std").mem.zeroes(bool),
    detect_late_publishers: bool = @import("std").mem.zeroes(bool),
    max_samples: usize = @import("std").mem.zeroes(usize),
    max_age_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const ze_advanced_subscriber_history_options_t = struct_ze_advanced_subscriber_history_options_t;
pub const struct_ze_advanced_subscriber_last_sample_miss_detection_options_t = extern struct {
    is_enabled: bool = @import("std").mem.zeroes(bool),
    periodic_queries_period_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const ze_advanced_subscriber_last_sample_miss_detection_options_t = struct_ze_advanced_subscriber_last_sample_miss_detection_options_t;
pub const struct_ze_advanced_subscriber_recovery_options_t = extern struct {
    is_enabled: bool = @import("std").mem.zeroes(bool),
    last_sample_miss_detection: struct_ze_advanced_subscriber_last_sample_miss_detection_options_t = @import("std").mem.zeroes(struct_ze_advanced_subscriber_last_sample_miss_detection_options_t),
};
pub const ze_advanced_subscriber_recovery_options_t = struct_ze_advanced_subscriber_recovery_options_t;
pub const struct_ze_advanced_subscriber_options_t = extern struct {
    subscriber_options: struct_z_subscriber_options_t = @import("std").mem.zeroes(struct_z_subscriber_options_t),
    history: struct_ze_advanced_subscriber_history_options_t = @import("std").mem.zeroes(struct_ze_advanced_subscriber_history_options_t),
    recovery: struct_ze_advanced_subscriber_recovery_options_t = @import("std").mem.zeroes(struct_ze_advanced_subscriber_recovery_options_t),
    query_timeout_ms: u64 = @import("std").mem.zeroes(u64),
    subscriber_detection: bool = @import("std").mem.zeroes(bool),
    subscriber_detection_metadata: [*c]const struct_z_loaned_keyexpr_t = @import("std").mem.zeroes([*c]const struct_z_loaned_keyexpr_t),
};
pub const ze_advanced_subscriber_options_t = struct_ze_advanced_subscriber_options_t;
pub const struct_ze_loaned_closure_miss_t = extern struct {
    _0: [3]usize = @import("std").mem.zeroes([3]usize),
};
pub const ze_loaned_closure_miss_t = struct_ze_loaned_closure_miss_t;
pub const struct_ze_publication_cache_options_t = extern struct {
    queryable_prefix: [*c]const struct_z_loaned_keyexpr_t = @import("std").mem.zeroes([*c]const struct_z_loaned_keyexpr_t),
    queryable_origin: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
    queryable_complete: bool = @import("std").mem.zeroes(bool),
    history: usize = @import("std").mem.zeroes(usize),
    resources_limit: usize = @import("std").mem.zeroes(usize),
};
pub const ze_publication_cache_options_t = struct_ze_publication_cache_options_t;
pub const struct_ze_querying_subscriber_options_t = extern struct {
    allowed_origin: enum_zc_locality_t = @import("std").mem.zeroes(enum_zc_locality_t),
    query_selector: [*c]const struct_z_loaned_keyexpr_t = @import("std").mem.zeroes([*c]const struct_z_loaned_keyexpr_t),
    query_target: enum_z_query_target_t = @import("std").mem.zeroes(enum_z_query_target_t),
    query_consolidation: struct_z_query_consolidation_t = @import("std").mem.zeroes(struct_z_query_consolidation_t),
    query_accept_replies: enum_zc_reply_keyexpr_t = @import("std").mem.zeroes(enum_zc_reply_keyexpr_t),
    query_timeout_ms: u64 = @import("std").mem.zeroes(u64),
};
pub const ze_querying_subscriber_options_t = struct_ze_querying_subscriber_options_t;
pub const struct_ze_moved_publication_cache_t = extern struct {
    _this: struct_ze_owned_publication_cache_t = @import("std").mem.zeroes(struct_ze_owned_publication_cache_t),
};
pub const ze_moved_publication_cache_t = struct_ze_moved_publication_cache_t;
pub const struct_ze_loaned_publication_cache_t = extern struct {
    _0: [96]u8 = @import("std").mem.zeroes([96]u8),
};
pub const ze_loaned_publication_cache_t = struct_ze_loaned_publication_cache_t;
pub const struct_ze_moved_querying_subscriber_t = extern struct {
    _this: struct_ze_owned_querying_subscriber_t = @import("std").mem.zeroes(struct_ze_owned_querying_subscriber_t),
};
pub const ze_moved_querying_subscriber_t = struct_ze_moved_querying_subscriber_t;
pub const struct_ze_moved_sample_miss_listener_t = extern struct {
    _this: struct_ze_owned_sample_miss_listener_t = @import("std").mem.zeroes(struct_ze_owned_sample_miss_listener_t),
};
pub const ze_moved_sample_miss_listener_t = struct_ze_moved_sample_miss_listener_t;
pub const struct_ze_moved_serializer_t = extern struct {
    _this: struct_ze_owned_serializer_t = @import("std").mem.zeroes(struct_ze_owned_serializer_t),
};
pub const ze_moved_serializer_t = struct_ze_moved_serializer_t;
pub extern const Z_ROUTER: c_uint;
pub extern const Z_PEER: c_uint;
pub extern const Z_CLIENT: c_uint;
pub extern var Z_CONFIG_MODE_KEY: [*c]const u8;
pub extern var Z_CONFIG_CONNECT_KEY: [*c]const u8;
pub extern var Z_CONFIG_LISTEN_KEY: [*c]const u8;
pub extern var Z_CONFIG_USER_KEY: [*c]const u8;
pub extern var Z_CONFIG_PASSWORD_KEY: [*c]const u8;
pub extern var Z_CONFIG_MULTICAST_SCOUTING_KEY: [*c]const u8;
pub extern var Z_CONFIG_MULTICAST_INTERFACE_KEY: [*c]const u8;
pub extern var Z_CONFIG_MULTICAST_IPV4_ADDRESS_KEY: [*c]const u8;
pub extern var Z_CONFIG_SCOUTING_TIMEOUT_KEY: [*c]const u8;
pub extern var Z_CONFIG_SCOUTING_DELAY_KEY: [*c]const u8;
pub extern var Z_CONFIG_ADD_TIMESTAMP_KEY: [*c]const u8;
pub extern var Z_CONFIG_SHARED_MEMORY_KEY: [*c]const u8;
pub extern const Z_SHM_POSIX_PROTOCOL_ID: c_uint;
pub extern fn z_alloc_layout_alloc(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t) void;
pub extern fn z_alloc_layout_alloc_gc(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t) void;
pub extern fn z_alloc_layout_alloc_gc_defrag(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t) void;
pub extern fn z_alloc_layout_alloc_gc_defrag_blocking(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t) void;
pub extern fn z_alloc_layout_alloc_gc_defrag_dealloc(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t) void;
pub extern fn z_alloc_layout_drop(this_: [*c]struct_z_moved_alloc_layout_t) void;
pub extern fn z_alloc_layout_loan(this_: [*c]const struct_z_owned_alloc_layout_t) [*c]const struct_z_loaned_alloc_layout_t;
pub extern fn z_alloc_layout_new(this_: [*c]struct_z_owned_alloc_layout_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) z_result_t;
pub extern fn z_alloc_layout_threadsafe_alloc_gc_defrag_async(out_result: [*c]struct_z_buf_alloc_result_t, layout: [*c]const struct_z_loaned_alloc_layout_t, result_context: struct_zc_threadsafe_context_t, result_callback: ?*const fn (?*anyopaque, [*c]struct_z_buf_alloc_result_t) callconv(.c) void) z_result_t;
pub extern fn z_bytes_as_loaned_shm(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c][*c]const struct_z_loaned_shm_t) z_result_t;
pub extern fn z_bytes_as_mut_loaned_shm(this_: [*c]struct_z_loaned_bytes_t, dst: [*c][*c]struct_z_loaned_shm_t) z_result_t;
pub extern fn z_bytes_clone(dst: [*c]struct_z_owned_bytes_t, this_: [*c]const struct_z_loaned_bytes_t) void;
pub extern fn z_bytes_copy_from_buf(this_: [*c]struct_z_owned_bytes_t, data: [*c]const u8, len: usize) z_result_t;
pub extern fn z_bytes_copy_from_slice(this_: [*c]struct_z_owned_bytes_t, slice: [*c]const struct_z_loaned_slice_t) void;
pub extern fn z_bytes_copy_from_str(this_: [*c]struct_z_owned_bytes_t, str: [*c]const u8) z_result_t;
pub extern fn z_bytes_copy_from_string(this_: [*c]struct_z_owned_bytes_t, str: [*c]const struct_z_loaned_string_t) void;
pub extern fn z_bytes_drop(this_: [*c]struct_z_moved_bytes_t) void;
pub extern fn z_bytes_empty(this_: [*c]struct_z_owned_bytes_t) void;
pub extern fn z_bytes_from_buf(this_: [*c]struct_z_owned_bytes_t, data: [*c]u8, len: usize, deleter: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, context: ?*anyopaque) z_result_t;
pub extern fn z_bytes_from_shm(this_: [*c]struct_z_owned_bytes_t, shm: [*c]struct_z_moved_shm_t) z_result_t;
pub extern fn z_bytes_from_shm_mut(this_: [*c]struct_z_owned_bytes_t, shm: [*c]struct_z_moved_shm_mut_t) z_result_t;
pub extern fn z_bytes_from_slice(this_: [*c]struct_z_owned_bytes_t, slice: [*c]struct_z_moved_slice_t) void;
pub extern fn z_bytes_from_static_buf(this_: [*c]struct_z_owned_bytes_t, data: [*c]u8, len: usize) z_result_t;
pub extern fn z_bytes_from_static_str(this_: [*c]struct_z_owned_bytes_t, str: [*c]const u8) z_result_t;
pub extern fn z_bytes_from_str(this_: [*c]struct_z_owned_bytes_t, str: [*c]u8, deleter: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, context: ?*anyopaque) z_result_t;
pub extern fn z_bytes_from_string(this_: [*c]struct_z_owned_bytes_t, s: [*c]struct_z_moved_string_t) void;
pub extern fn z_bytes_get_contiguous_view(this_: [*c]const struct_z_loaned_bytes_t, view: [*c]struct_z_view_slice_t) z_result_t;
pub extern fn z_bytes_get_reader(data: [*c]const struct_z_loaned_bytes_t) struct_z_bytes_reader_t;
pub extern fn z_bytes_get_slice_iterator(this_: [*c]const struct_z_loaned_bytes_t) struct_z_bytes_slice_iterator_t;
pub extern fn z_bytes_is_empty(this_: [*c]const struct_z_loaned_bytes_t) bool;
pub extern fn z_bytes_len(this_: [*c]const struct_z_loaned_bytes_t) usize;
pub extern fn z_bytes_loan(this_: [*c]const struct_z_owned_bytes_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_bytes_loan_mut(this_: [*c]struct_z_owned_bytes_t) [*c]struct_z_loaned_bytes_t;
pub extern fn z_bytes_reader_read(this_: [*c]struct_z_bytes_reader_t, dst: [*c]u8, len: usize) usize;
pub extern fn z_bytes_reader_remaining(this_: [*c]const struct_z_bytes_reader_t) usize;
pub extern fn z_bytes_reader_seek(this_: [*c]struct_z_bytes_reader_t, offset: i64, origin: c_int) z_result_t;
pub extern fn z_bytes_reader_tell(this_: [*c]struct_z_bytes_reader_t) i64;
pub extern fn z_bytes_slice_iterator_next(this_: [*c]struct_z_bytes_slice_iterator_t, slice: [*c]struct_z_view_slice_t) bool;
pub extern fn z_bytes_to_owned_shm(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]struct_z_owned_shm_t) z_result_t;
pub extern fn z_bytes_to_slice(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]struct_z_owned_slice_t) z_result_t;
pub extern fn z_bytes_to_string(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn z_bytes_writer_append(this_: [*c]struct_z_loaned_bytes_writer_t, bytes: [*c]struct_z_moved_bytes_t) z_result_t;
pub extern fn z_bytes_writer_drop(this_: [*c]struct_z_moved_bytes_writer_t) void;
pub extern fn z_bytes_writer_empty(this_: [*c]struct_z_owned_bytes_writer_t) z_result_t;
pub extern fn z_bytes_writer_finish(this_: [*c]struct_z_moved_bytes_writer_t, bytes: [*c]struct_z_owned_bytes_t) void;
pub extern fn z_bytes_writer_loan(this_: [*c]const struct_z_owned_bytes_writer_t) [*c]const struct_z_loaned_bytes_writer_t;
pub extern fn z_bytes_writer_loan_mut(this_: [*c]struct_z_owned_bytes_writer_t) [*c]struct_z_loaned_bytes_writer_t;
pub extern fn z_bytes_writer_write_all(this_: [*c]struct_z_loaned_bytes_writer_t, src: [*c]const u8, len: usize) z_result_t;
pub extern fn z_chunk_alloc_result_drop(this_: [*c]struct_z_moved_chunk_alloc_result_t) void;
pub extern fn z_chunk_alloc_result_new_error(this_: [*c]struct_z_owned_chunk_alloc_result_t, alloc_error: enum_z_alloc_error_t) void;
pub extern fn z_chunk_alloc_result_new_ok(this_: [*c]struct_z_owned_chunk_alloc_result_t, allocated_chunk: struct_z_allocated_chunk_t) z_result_t;
pub extern fn z_clock_elapsed_ms(time: [*c]const struct_z_clock_t) u64;
pub extern fn z_clock_elapsed_s(time: [*c]const struct_z_clock_t) u64;
pub extern fn z_clock_elapsed_us(time: [*c]const struct_z_clock_t) u64;
pub extern fn z_clock_now() struct_z_clock_t;
pub extern fn z_close(session: [*c]struct_z_loaned_session_t, options: [*c]struct_z_close_options_t) z_result_t;
pub extern fn z_close_options_default(this_: [*c]struct_z_close_options_t) void;
pub extern fn z_closure_hello(this_: [*c]struct_z_owned_closure_hello_t, call: ?*const fn ([*c]struct_z_loaned_hello_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_hello_call(closure: [*c]const struct_z_loaned_closure_hello_t, hello: [*c]struct_z_loaned_hello_t) void;
pub extern fn z_closure_hello_drop(this_: [*c]struct_z_moved_closure_hello_t) void;
pub extern fn z_closure_hello_loan(closure: [*c]const struct_z_owned_closure_hello_t) [*c]const struct_z_loaned_closure_hello_t;
pub extern fn z_closure_hello_loan_mut(closure: [*c]struct_z_owned_closure_hello_t) [*c]struct_z_loaned_closure_hello_t;
pub extern fn z_closure_matching_status(this_: [*c]struct_z_owned_closure_matching_status_t, call: ?*const fn ([*c]const struct_z_matching_status_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_matching_status_call(closure: [*c]const struct_z_loaned_closure_matching_status_t, mathing_status: [*c]const struct_z_matching_status_t) void;
pub extern fn z_closure_matching_status_drop(closure_: [*c]struct_z_moved_closure_matching_status_t) void;
pub extern fn z_closure_matching_status_loan(closure: [*c]const struct_z_owned_closure_matching_status_t) [*c]const struct_z_loaned_closure_matching_status_t;
pub extern fn z_closure_query(this_: [*c]struct_z_owned_closure_query_t, call: ?*const fn ([*c]struct_z_loaned_query_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_query_call(closure: [*c]const struct_z_loaned_closure_query_t, query: [*c]struct_z_loaned_query_t) void;
pub extern fn z_closure_query_drop(closure_: [*c]struct_z_moved_closure_query_t) void;
pub extern fn z_closure_query_loan(closure: [*c]const struct_z_owned_closure_query_t) [*c]const struct_z_loaned_closure_query_t;
pub extern fn z_closure_query_loan_mut(closure: [*c]struct_z_owned_closure_query_t) [*c]struct_z_loaned_closure_query_t;
pub extern fn z_closure_reply(this_: [*c]struct_z_owned_closure_reply_t, call: ?*const fn ([*c]struct_z_loaned_reply_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_reply_call(closure: [*c]const struct_z_loaned_closure_reply_t, reply: [*c]struct_z_loaned_reply_t) void;
pub extern fn z_closure_reply_drop(closure_: [*c]struct_z_moved_closure_reply_t) void;
pub extern fn z_closure_reply_loan(closure: [*c]const struct_z_owned_closure_reply_t) [*c]const struct_z_loaned_closure_reply_t;
pub extern fn z_closure_reply_loan_mut(closure: [*c]struct_z_owned_closure_reply_t) [*c]struct_z_loaned_closure_reply_t;
pub extern fn z_closure_sample(this_: [*c]struct_z_owned_closure_sample_t, call: ?*const fn ([*c]struct_z_loaned_sample_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_sample_call(closure: [*c]const struct_z_loaned_closure_sample_t, sample: [*c]struct_z_loaned_sample_t) void;
pub extern fn z_closure_sample_drop(closure_: [*c]struct_z_moved_closure_sample_t) void;
pub extern fn z_closure_sample_loan(closure: [*c]const struct_z_owned_closure_sample_t) [*c]const struct_z_loaned_closure_sample_t;
pub extern fn z_closure_sample_loan_mut(closure: [*c]struct_z_owned_closure_sample_t) [*c]struct_z_loaned_closure_sample_t;
pub extern fn z_closure_zid(this_: [*c]struct_z_owned_closure_zid_t, call: ?*const fn ([*c]const struct_z_id_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn z_closure_zid_call(closure: [*c]const struct_z_loaned_closure_zid_t, z_id: [*c]const struct_z_id_t) void;
pub extern fn z_closure_zid_drop(closure_: [*c]struct_z_moved_closure_zid_t) void;
pub extern fn z_closure_zid_loan(closure: [*c]const struct_z_owned_closure_zid_t) [*c]const struct_z_loaned_closure_zid_t;
pub extern fn z_closure_zid_loan_mut(closure: [*c]const struct_z_owned_closure_zid_t) [*c]const struct_z_loaned_closure_zid_t;
pub extern fn z_condvar_drop(this_: [*c]struct_z_moved_condvar_t) void;
pub extern fn z_condvar_init(this_: [*c]struct_z_owned_condvar_t) void;
pub extern fn z_condvar_loan(this_: [*c]const struct_z_owned_condvar_t) [*c]const struct_z_loaned_condvar_t;
pub extern fn z_condvar_loan_mut(this_: [*c]struct_z_owned_condvar_t) [*c]struct_z_loaned_condvar_t;
pub extern fn z_condvar_signal(this_: [*c]const struct_z_loaned_condvar_t) z_result_t;
pub extern fn z_condvar_wait(this_: [*c]const struct_z_loaned_condvar_t, m: [*c]struct_z_loaned_mutex_t) z_result_t;
pub extern fn z_config_clone(dst: [*c]struct_z_owned_config_t, this_: [*c]const struct_z_loaned_config_t) void;
pub extern fn z_config_default(this_: [*c]struct_z_owned_config_t) z_result_t;
pub extern fn z_config_drop(this_: [*c]struct_z_moved_config_t) void;
pub extern fn z_config_loan(this_: [*c]const struct_z_owned_config_t) [*c]const struct_z_loaned_config_t;
pub extern fn z_config_loan_mut(this_: [*c]struct_z_owned_config_t) [*c]struct_z_loaned_config_t;
pub extern fn z_declare_background_queryable(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_query_t, options: [*c]struct_z_queryable_options_t) z_result_t;
pub extern fn z_declare_background_subscriber(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_subscriber_options_t) z_result_t;
pub extern fn z_declare_keyexpr(session: [*c]const struct_z_loaned_session_t, declared_key_expr: [*c]struct_z_owned_keyexpr_t, key_expr: [*c]const struct_z_loaned_keyexpr_t) z_result_t;
pub extern fn z_declare_publisher(session: [*c]const struct_z_loaned_session_t, publisher: [*c]struct_z_owned_publisher_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_z_publisher_options_t) z_result_t;
pub extern fn z_declare_querier(session: [*c]const struct_z_loaned_session_t, querier: [*c]struct_z_owned_querier_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_z_querier_options_t) z_result_t;
pub extern fn z_declare_queryable(session: [*c]const struct_z_loaned_session_t, queryable: [*c]struct_z_owned_queryable_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_query_t, options: [*c]struct_z_queryable_options_t) z_result_t;
pub extern fn z_declare_subscriber(session: [*c]const struct_z_loaned_session_t, subscriber: [*c]struct_z_owned_subscriber_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_subscriber_options_t) z_result_t;
pub extern fn z_delete(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_z_delete_options_t) z_result_t;
pub extern fn z_delete_options_default(this_: [*c]struct_z_delete_options_t) void;
pub extern fn z_encoding_application_cbor() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_cdr() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_coap_payload() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_java_serialized_object() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_json() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_json_patch_json() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_json_seq() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_jsonpath() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_jwt() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_mp4() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_octet_stream() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_openmetrics_text() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_protobuf() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_python_serialized_object() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_soap_xml() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_sql() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_x_www_form_urlencoded() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_xml() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_yaml() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_application_yang() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_audio_aac() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_audio_flac() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_audio_mp4() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_audio_ogg() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_audio_vorbis() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_clone(dst: [*c]struct_z_owned_encoding_t, this_: [*c]const struct_z_loaned_encoding_t) void;
pub extern fn z_encoding_drop(this_: [*c]struct_z_moved_encoding_t) void;
pub extern fn z_encoding_equals(this_: [*c]const struct_z_loaned_encoding_t, other: [*c]const struct_z_loaned_encoding_t) bool;
pub extern fn z_encoding_from_str(this_: [*c]struct_z_owned_encoding_t, s: [*c]const u8) z_result_t;
pub extern fn z_encoding_from_substr(this_: [*c]struct_z_owned_encoding_t, s: [*c]const u8, len: usize) z_result_t;
pub extern fn z_encoding_image_bmp() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_image_gif() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_image_jpeg() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_image_png() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_image_webp() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_loan(this_: [*c]const struct_z_owned_encoding_t) [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_loan_default() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_loan_mut(this_: [*c]struct_z_owned_encoding_t) [*c]struct_z_loaned_encoding_t;
pub extern fn z_encoding_set_schema_from_str(this_: [*c]struct_z_loaned_encoding_t, s: [*c]const u8) z_result_t;
pub extern fn z_encoding_set_schema_from_substr(this_: [*c]struct_z_loaned_encoding_t, s: [*c]const u8, len: usize) z_result_t;
pub extern fn z_encoding_text_css() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_csv() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_html() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_javascript() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_json() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_json5() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_markdown() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_plain() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_xml() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_text_yaml() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_to_string(this_: [*c]const struct_z_loaned_encoding_t, out_str: [*c]struct_z_owned_string_t) void;
pub extern fn z_encoding_video_h261() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_h263() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_h264() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_h265() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_h266() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_mp4() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_ogg() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_raw() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_vp8() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_video_vp9() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_zenoh_bytes() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_zenoh_serialized() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_encoding_zenoh_string() [*c]const struct_z_loaned_encoding_t;
pub extern fn z_entity_global_id_eid(this_: [*c]const struct_z_entity_global_id_t) u32;
pub extern fn z_entity_global_id_zid(this_: [*c]const struct_z_entity_global_id_t) struct_z_id_t;
pub extern fn z_fifo_channel_query_new(callback: [*c]struct_z_owned_closure_query_t, handler: [*c]struct_z_owned_fifo_handler_query_t, capacity: usize) void;
pub extern fn z_fifo_channel_reply_new(callback: [*c]struct_z_owned_closure_reply_t, handler: [*c]struct_z_owned_fifo_handler_reply_t, capacity: usize) void;
pub extern fn z_fifo_channel_sample_new(callback: [*c]struct_z_owned_closure_sample_t, handler: [*c]struct_z_owned_fifo_handler_sample_t, capacity: usize) void;
pub extern fn z_fifo_handler_query_drop(this_: [*c]struct_z_moved_fifo_handler_query_t) void;
pub extern fn z_fifo_handler_query_loan(this_: [*c]const struct_z_owned_fifo_handler_query_t) [*c]const struct_z_loaned_fifo_handler_query_t;
pub extern fn z_fifo_handler_query_recv(this_: [*c]const struct_z_loaned_fifo_handler_query_t, query: [*c]struct_z_owned_query_t) z_result_t;
pub extern fn z_fifo_handler_query_try_recv(this_: [*c]const struct_z_loaned_fifo_handler_query_t, query: [*c]struct_z_owned_query_t) z_result_t;
pub extern fn z_fifo_handler_reply_drop(this_: [*c]struct_z_moved_fifo_handler_reply_t) void;
pub extern fn z_fifo_handler_reply_loan(this_: [*c]const struct_z_owned_fifo_handler_reply_t) [*c]const struct_z_loaned_fifo_handler_reply_t;
pub extern fn z_fifo_handler_reply_recv(this_: [*c]const struct_z_loaned_fifo_handler_reply_t, reply: [*c]struct_z_owned_reply_t) z_result_t;
pub extern fn z_fifo_handler_reply_try_recv(this_: [*c]const struct_z_loaned_fifo_handler_reply_t, reply: [*c]struct_z_owned_reply_t) z_result_t;
pub extern fn z_fifo_handler_sample_drop(this_: [*c]struct_z_moved_fifo_handler_sample_t) void;
pub extern fn z_fifo_handler_sample_loan(this_: [*c]const struct_z_owned_fifo_handler_sample_t) [*c]const struct_z_loaned_fifo_handler_sample_t;
pub extern fn z_fifo_handler_sample_recv(this_: [*c]const struct_z_loaned_fifo_handler_sample_t, sample: [*c]struct_z_owned_sample_t) z_result_t;
pub extern fn z_fifo_handler_sample_try_recv(this_: [*c]const struct_z_loaned_fifo_handler_sample_t, sample: [*c]struct_z_owned_sample_t) z_result_t;
pub extern fn z_get(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, parameters: [*c]const u8, callback: [*c]struct_z_moved_closure_reply_t, options: [*c]struct_z_get_options_t) z_result_t;
pub extern fn z_get_options_default(this_: [*c]struct_z_get_options_t) void;
pub extern fn z_hello_clone(dst: [*c]struct_z_owned_hello_t, this_: [*c]const struct_z_loaned_hello_t) void;
pub extern fn z_hello_drop(this_: [*c]struct_z_moved_hello_t) void;
pub extern fn z_hello_loan(this_: [*c]const struct_z_owned_hello_t) [*c]const struct_z_loaned_hello_t;
pub extern fn z_hello_locators(this_: [*c]const struct_z_loaned_hello_t, locators_out: [*c]struct_z_owned_string_array_t) void;
pub extern fn z_hello_whatami(this_: [*c]const struct_z_loaned_hello_t) enum_z_whatami_t;
pub extern fn z_hello_zid(this_: [*c]const struct_z_loaned_hello_t) struct_z_id_t;
pub extern fn z_id_to_string(zid: [*c]const struct_z_id_t, dst: [*c]struct_z_owned_string_t) void;
pub extern fn z_info_peers_zid(session: [*c]const struct_z_loaned_session_t, callback: [*c]struct_z_moved_closure_zid_t) z_result_t;
pub extern fn z_info_routers_zid(session: [*c]const struct_z_loaned_session_t, callback: [*c]struct_z_moved_closure_zid_t) z_result_t;
pub extern fn z_info_zid(session: [*c]const struct_z_loaned_session_t) struct_z_id_t;
pub extern fn z_internal_alloc_layout_check(this_: [*c]const struct_z_owned_alloc_layout_t) bool;
pub extern fn z_internal_alloc_layout_null(this_: [*c]struct_z_owned_alloc_layout_t) void;
pub extern fn z_internal_bytes_check(this_: [*c]const struct_z_owned_bytes_t) bool;
pub extern fn z_internal_bytes_null(this_: [*c]struct_z_owned_bytes_t) void;
pub extern fn z_internal_bytes_writer_check(this_: [*c]const struct_z_owned_bytes_writer_t) bool;
pub extern fn z_internal_bytes_writer_null(this_: [*c]struct_z_owned_bytes_writer_t) void;
pub extern fn z_internal_chunk_alloc_result_check(this_: [*c]const struct_z_owned_chunk_alloc_result_t) bool;
pub extern fn z_internal_chunk_alloc_result_null(this_: [*c]struct_z_owned_chunk_alloc_result_t) void;
pub extern fn z_internal_closure_hello_check(this_: [*c]const struct_z_owned_closure_hello_t) bool;
pub extern fn z_internal_closure_hello_null(this_: [*c]struct_z_owned_closure_hello_t) void;
pub extern fn z_internal_closure_matching_status_check(this_: [*c]const struct_z_owned_closure_matching_status_t) bool;
pub extern fn z_internal_closure_matching_status_null(this_: [*c]struct_z_owned_closure_matching_status_t) void;
pub extern fn z_internal_closure_query_check(this_: [*c]const struct_z_owned_closure_query_t) bool;
pub extern fn z_internal_closure_query_null(this_: [*c]struct_z_owned_closure_query_t) void;
pub extern fn z_internal_closure_reply_check(this_: [*c]const struct_z_owned_closure_reply_t) bool;
pub extern fn z_internal_closure_reply_null(this_: [*c]struct_z_owned_closure_reply_t) void;
pub extern fn z_internal_closure_sample_check(this_: [*c]const struct_z_owned_closure_sample_t) bool;
pub extern fn z_internal_closure_sample_null(this_: [*c]struct_z_owned_closure_sample_t) void;
pub extern fn z_internal_closure_zid_check(this_: [*c]const struct_z_owned_closure_zid_t) bool;
pub extern fn z_internal_closure_zid_null(this_: [*c]struct_z_owned_closure_zid_t) void;
pub extern fn z_internal_condvar_check(this_: [*c]const struct_z_owned_condvar_t) bool;
pub extern fn z_internal_condvar_null(this_: [*c]struct_z_owned_condvar_t) void;
pub extern fn z_internal_config_check(this_: [*c]const struct_z_owned_config_t) bool;
pub extern fn z_internal_config_null(this_: [*c]struct_z_owned_config_t) void;
pub extern fn z_internal_encoding_check(this_: [*c]const struct_z_owned_encoding_t) bool;
pub extern fn z_internal_encoding_null(this_: [*c]struct_z_owned_encoding_t) void;
pub extern fn z_internal_fifo_handler_query_check(this_: [*c]const struct_z_owned_fifo_handler_query_t) bool;
pub extern fn z_internal_fifo_handler_query_null(this_: [*c]struct_z_owned_fifo_handler_query_t) void;
pub extern fn z_internal_fifo_handler_reply_check(this_: [*c]const struct_z_owned_fifo_handler_reply_t) bool;
pub extern fn z_internal_fifo_handler_reply_null(this_: [*c]struct_z_owned_fifo_handler_reply_t) void;
pub extern fn z_internal_fifo_handler_sample_check(this_: [*c]const struct_z_owned_fifo_handler_sample_t) bool;
pub extern fn z_internal_fifo_handler_sample_null(this_: [*c]struct_z_owned_fifo_handler_sample_t) void;
pub extern fn z_internal_hello_check(this_: [*c]const struct_z_owned_hello_t) bool;
pub extern fn z_internal_hello_null(this_: [*c]struct_z_owned_hello_t) void;
pub extern fn z_internal_keyexpr_check(this_: [*c]const struct_z_owned_keyexpr_t) bool;
pub extern fn z_internal_keyexpr_null(this_: [*c]struct_z_owned_keyexpr_t) void;
pub extern fn z_internal_liveliness_token_check(this_: [*c]const struct_z_owned_liveliness_token_t) bool;
pub extern fn z_internal_liveliness_token_null(this_: [*c]struct_z_owned_liveliness_token_t) void;
pub extern fn z_internal_matching_listener_check(this_: [*c]const struct_z_owned_matching_listener_t) bool;
pub extern fn z_internal_matching_listener_null(this_: [*c]struct_z_owned_matching_listener_t) void;
pub extern fn z_internal_memory_layout_check(this_: [*c]const struct_z_owned_memory_layout_t) bool;
pub extern fn z_internal_memory_layout_null(this_: [*c]struct_z_owned_memory_layout_t) void;
pub extern fn z_internal_mutex_check(this_: [*c]const struct_z_owned_mutex_t) bool;
pub extern fn z_internal_mutex_null(this_: [*c]struct_z_owned_mutex_t) void;
pub extern fn z_internal_publisher_check(this_: [*c]const struct_z_owned_publisher_t) bool;
pub extern fn z_internal_publisher_null(this_: [*c]struct_z_owned_publisher_t) void;
pub extern fn z_internal_querier_check(this_: [*c]const struct_z_owned_querier_t) bool;
pub extern fn z_internal_querier_null(this_: [*c]struct_z_owned_querier_t) void;
pub extern fn z_internal_query_check(query: [*c]const struct_z_owned_query_t) bool;
pub extern fn z_internal_query_null(this_: [*c]struct_z_owned_query_t) void;
pub extern fn z_internal_queryable_check(this_: [*c]const struct_z_owned_queryable_t) bool;
pub extern fn z_internal_queryable_null(this_: [*c]struct_z_owned_queryable_t) void;
pub extern fn z_internal_reply_check(this_: [*c]const struct_z_owned_reply_t) bool;
pub extern fn z_internal_reply_err_check(this_: [*c]const struct_z_owned_reply_err_t) bool;
pub extern fn z_internal_reply_err_null(this_: [*c]struct_z_owned_reply_err_t) void;
pub extern fn z_internal_reply_null(this_: [*c]struct_z_owned_reply_t) void;
pub extern fn z_internal_ring_handler_query_check(this_: [*c]const struct_z_owned_ring_handler_query_t) bool;
pub extern fn z_internal_ring_handler_query_null(this_: [*c]struct_z_owned_ring_handler_query_t) void;
pub extern fn z_internal_ring_handler_reply_check(this_: [*c]const struct_z_owned_ring_handler_reply_t) bool;
pub extern fn z_internal_ring_handler_reply_null(this_: [*c]struct_z_owned_ring_handler_reply_t) void;
pub extern fn z_internal_ring_handler_sample_check(this_: [*c]const struct_z_owned_ring_handler_sample_t) bool;
pub extern fn z_internal_ring_handler_sample_null(this_: [*c]struct_z_owned_ring_handler_sample_t) void;
pub extern fn z_internal_sample_check(this_: [*c]const struct_z_owned_sample_t) bool;
pub extern fn z_internal_sample_null(this_: [*c]struct_z_owned_sample_t) void;
pub extern fn z_internal_session_check(this_: [*c]const struct_z_owned_session_t) bool;
pub extern fn z_internal_session_null(this_: [*c]struct_z_owned_session_t) void;
pub extern fn z_internal_shm_check(this_: [*c]const struct_z_owned_shm_t) bool;
pub extern fn z_internal_shm_client_check(this_: [*c]const struct_z_owned_shm_client_t) bool;
pub extern fn z_internal_shm_client_null(this_: [*c]struct_z_owned_shm_client_t) void;
pub extern fn z_internal_shm_client_storage_check(this_: [*c]const struct_z_owned_shm_client_storage_t) bool;
pub extern fn z_internal_shm_client_storage_null(this_: [*c]struct_z_owned_shm_client_storage_t) void;
pub extern fn z_internal_shm_mut_check(this_: [*c]const struct_z_owned_shm_mut_t) bool;
pub extern fn z_internal_shm_mut_null(this_: [*c]struct_z_owned_shm_mut_t) void;
pub extern fn z_internal_shm_null(this_: [*c]struct_z_owned_shm_t) void;
pub extern fn z_internal_shm_provider_check(this_: [*c]const struct_z_owned_shm_provider_t) bool;
pub extern fn z_internal_shm_provider_null(this_: [*c]struct_z_owned_shm_provider_t) void;
pub extern fn z_internal_slice_check(this_: [*c]const struct_z_owned_slice_t) bool;
pub extern fn z_internal_slice_null(this_: [*c]struct_z_owned_slice_t) void;
pub extern fn z_internal_source_info_check(this_: [*c]const struct_z_owned_source_info_t) bool;
pub extern fn z_internal_source_info_null(this_: [*c]struct_z_owned_source_info_t) void;
pub extern fn z_internal_string_array_check(this_: [*c]const struct_z_owned_string_array_t) bool;
pub extern fn z_internal_string_array_null(this_: [*c]struct_z_owned_string_array_t) void;
pub extern fn z_internal_string_check(this_: [*c]const struct_z_owned_string_t) bool;
pub extern fn z_internal_string_null(this_: [*c]struct_z_owned_string_t) void;
pub extern fn z_internal_subscriber_check(this_: [*c]const struct_z_owned_subscriber_t) bool;
pub extern fn z_internal_subscriber_null(this_: [*c]struct_z_owned_subscriber_t) void;
pub extern fn z_internal_task_check(this_: [*c]const struct_z_owned_task_t) bool;
pub extern fn z_internal_task_null(this_: [*c]struct_z_owned_task_t) void;
pub extern fn z_keyexpr_as_view_string(this_: [*c]const struct_z_loaned_keyexpr_t, out_string: [*c]struct_z_view_string_t) void;
pub extern fn z_keyexpr_canonize(start: [*c]u8, len: [*c]usize) z_result_t;
pub extern fn z_keyexpr_canonize_null_terminated(start: [*c]u8) z_result_t;
pub extern fn z_keyexpr_clone(dst: [*c]struct_z_owned_keyexpr_t, this_: [*c]const struct_z_loaned_keyexpr_t) void;
pub extern fn z_keyexpr_concat(this_: [*c]struct_z_owned_keyexpr_t, left: [*c]const struct_z_loaned_keyexpr_t, right_start: [*c]const u8, right_len: usize) z_result_t;
pub extern fn z_keyexpr_drop(this_: [*c]struct_z_moved_keyexpr_t) void;
pub extern fn z_keyexpr_equals(left: [*c]const struct_z_loaned_keyexpr_t, right: [*c]const struct_z_loaned_keyexpr_t) bool;
pub extern fn z_keyexpr_from_str(this_: [*c]struct_z_owned_keyexpr_t, expr: [*c]const u8) z_result_t;
pub extern fn z_keyexpr_from_str_autocanonize(this_: [*c]struct_z_owned_keyexpr_t, expr: [*c]const u8) z_result_t;
pub extern fn z_keyexpr_from_substr(this_: [*c]struct_z_owned_keyexpr_t, expr: [*c]const u8, len: usize) z_result_t;
pub extern fn z_keyexpr_from_substr_autocanonize(this_: [*c]struct_z_owned_keyexpr_t, start: [*c]const u8, len: [*c]usize) z_result_t;
pub extern fn z_keyexpr_includes(left: [*c]const struct_z_loaned_keyexpr_t, right: [*c]const struct_z_loaned_keyexpr_t) bool;
pub extern fn z_keyexpr_intersects(left: [*c]const struct_z_loaned_keyexpr_t, right: [*c]const struct_z_loaned_keyexpr_t) bool;
pub extern fn z_keyexpr_is_canon(start: [*c]const u8, len: usize) z_result_t;
pub extern fn z_keyexpr_join(this_: [*c]struct_z_owned_keyexpr_t, left: [*c]const struct_z_loaned_keyexpr_t, right: [*c]const struct_z_loaned_keyexpr_t) z_result_t;
pub extern fn z_keyexpr_loan(this_: [*c]const struct_z_owned_keyexpr_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_keyexpr_relation_to(left: [*c]const struct_z_loaned_keyexpr_t, right: [*c]const struct_z_loaned_keyexpr_t) enum_z_keyexpr_intersection_level_t;
pub extern fn z_liveliness_declare_background_subscriber(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_liveliness_subscriber_options_t) z_result_t;
pub extern fn z_liveliness_declare_subscriber(session: [*c]const struct_z_loaned_session_t, subscriber: [*c]struct_z_owned_subscriber_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_liveliness_subscriber_options_t) z_result_t;
pub extern fn z_liveliness_declare_token(session: [*c]const struct_z_loaned_session_t, token: [*c]struct_z_owned_liveliness_token_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, _options: [*c]const struct_z_liveliness_token_options_t) z_result_t;
pub extern fn z_liveliness_get(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_reply_t, options: [*c]struct_z_liveliness_get_options_t) z_result_t;
pub extern fn z_liveliness_get_options_default(this_: [*c]struct_z_liveliness_get_options_t) void;
pub extern fn z_liveliness_subscriber_options_default(this_: [*c]struct_z_liveliness_subscriber_options_t) void;
pub extern fn z_liveliness_token_drop(this_: [*c]struct_z_moved_liveliness_token_t) void;
pub extern fn z_liveliness_token_loan(this_: [*c]const struct_z_owned_liveliness_token_t) [*c]const struct_z_loaned_liveliness_token_t;
pub extern fn z_liveliness_token_options_default(this_: [*c]struct_z_liveliness_token_options_t) void;
pub extern fn z_liveliness_undeclare_token(this_: [*c]struct_z_moved_liveliness_token_t) z_result_t;
pub extern fn z_matching_listener_drop(this_: [*c]struct_z_moved_matching_listener_t) void;
pub extern fn z_memory_layout_drop(this_: [*c]struct_z_moved_memory_layout_t) void;
pub extern fn z_memory_layout_get_data(this_: [*c]const struct_z_loaned_memory_layout_t, out_size: [*c]usize, out_alignment: [*c]struct_z_alloc_alignment_t) void;
pub extern fn z_memory_layout_loan(this_: [*c]const struct_z_owned_memory_layout_t) [*c]const struct_z_loaned_memory_layout_t;
pub extern fn z_memory_layout_new(this_: [*c]struct_z_owned_memory_layout_t, size: usize, alignment: struct_z_alloc_alignment_t) z_result_t;
pub extern fn z_mutex_drop(this_: [*c]struct_z_moved_mutex_t) void;
pub extern fn z_mutex_init(this_: [*c]struct_z_owned_mutex_t) z_result_t;
pub extern fn z_mutex_loan_mut(this_: [*c]struct_z_owned_mutex_t) [*c]struct_z_loaned_mutex_t;
pub extern fn z_mutex_lock(this_: [*c]struct_z_loaned_mutex_t) z_result_t;
pub extern fn z_mutex_try_lock(this_: [*c]struct_z_loaned_mutex_t) z_result_t;
pub extern fn z_mutex_unlock(this_: [*c]struct_z_loaned_mutex_t) z_result_t;
pub extern fn z_open(this_: [*c]struct_z_owned_session_t, config: [*c]struct_z_moved_config_t, _options: [*c]const struct_z_open_options_t) z_result_t;
pub extern fn z_open_options_default(this_: [*c]struct_z_open_options_t) void;
pub extern fn z_open_with_custom_shm_clients(this_: [*c]struct_z_owned_session_t, config: [*c]struct_z_moved_config_t, shm_clients: [*c]const struct_z_loaned_shm_client_storage_t) z_result_t;
pub extern fn z_posix_shm_client_new(this_: [*c]struct_z_owned_shm_client_t) void;
pub extern fn z_posix_shm_provider_new(this_: [*c]struct_z_owned_shm_provider_t, layout: [*c]const struct_z_loaned_memory_layout_t) z_result_t;
pub extern fn z_priority_default() enum_z_priority_t;
pub extern fn z_publisher_declare_background_matching_listener(publisher: [*c]const struct_z_loaned_publisher_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn z_publisher_declare_matching_listener(publisher: [*c]const struct_z_loaned_publisher_t, matching_listener: [*c]struct_z_owned_matching_listener_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn z_publisher_delete(publisher: [*c]const struct_z_loaned_publisher_t, options: [*c]struct_z_publisher_delete_options_t) z_result_t;
pub extern fn z_publisher_delete_options_default(this_: [*c]struct_z_publisher_delete_options_t) void;
pub extern fn z_publisher_drop(this_: [*c]struct_z_moved_publisher_t) void;
pub extern fn z_publisher_get_matching_status(this_: [*c]const struct_z_loaned_publisher_t, matching_status: [*c]struct_z_matching_status_t) z_result_t;
pub extern fn z_publisher_id(publisher: [*c]const struct_z_loaned_publisher_t) struct_z_entity_global_id_t;
pub extern fn z_publisher_keyexpr(publisher: [*c]const struct_z_loaned_publisher_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_publisher_loan(this_: [*c]const struct_z_owned_publisher_t) [*c]const struct_z_loaned_publisher_t;
pub extern fn z_publisher_loan_mut(this_: [*c]struct_z_owned_publisher_t) [*c]struct_z_loaned_publisher_t;
pub extern fn z_publisher_options_default(this_: [*c]struct_z_publisher_options_t) void;
pub extern fn z_publisher_put(this_: [*c]const struct_z_loaned_publisher_t, payload: [*c]struct_z_moved_bytes_t, options: [*c]struct_z_publisher_put_options_t) z_result_t;
pub extern fn z_publisher_put_options_default(this_: [*c]struct_z_publisher_put_options_t) void;
pub extern fn z_put(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, payload: [*c]struct_z_moved_bytes_t, options: [*c]struct_z_put_options_t) z_result_t;
pub extern fn z_put_options_default(this_: [*c]struct_z_put_options_t) void;
pub extern fn z_querier_declare_background_matching_listener(querier: [*c]const struct_z_loaned_querier_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn z_querier_declare_matching_listener(querier: [*c]const struct_z_loaned_querier_t, matching_listener: [*c]struct_z_owned_matching_listener_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn z_querier_drop(this_: [*c]struct_z_moved_querier_t) void;
pub extern fn z_querier_get(querier: [*c]const struct_z_loaned_querier_t, parameters: [*c]const u8, callback: [*c]struct_z_moved_closure_reply_t, options: [*c]struct_z_querier_get_options_t) z_result_t;
pub extern fn z_querier_get_matching_status(this_: [*c]const struct_z_loaned_querier_t, matching_status: [*c]struct_z_matching_status_t) z_result_t;
pub extern fn z_querier_get_options_default(this_: [*c]struct_z_querier_get_options_t) void;
pub extern fn z_querier_id(querier: [*c]const struct_z_loaned_querier_t) struct_z_entity_global_id_t;
pub extern fn z_querier_keyexpr(querier: [*c]const struct_z_loaned_querier_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_querier_loan(this_: [*c]const struct_z_owned_querier_t) [*c]const struct_z_loaned_querier_t;
pub extern fn z_querier_loan_mut(this_: [*c]struct_z_owned_querier_t) [*c]struct_z_loaned_querier_t;
pub extern fn z_querier_options_default(this_: [*c]struct_z_querier_options_t) void;
pub extern fn z_query_attachment(this_: [*c]const struct_z_loaned_query_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_query_attachment_mut(this_: [*c]struct_z_loaned_query_t) [*c]struct_z_loaned_bytes_t;
pub extern fn z_query_clone(dst: [*c]struct_z_owned_query_t, this_: [*c]const struct_z_loaned_query_t) void;
pub extern fn z_query_consolidation_auto() struct_z_query_consolidation_t;
pub extern fn z_query_consolidation_default() struct_z_query_consolidation_t;
pub extern fn z_query_consolidation_latest() struct_z_query_consolidation_t;
pub extern fn z_query_consolidation_monotonic() struct_z_query_consolidation_t;
pub extern fn z_query_consolidation_none() struct_z_query_consolidation_t;
pub extern fn z_query_drop(this_: [*c]struct_z_moved_query_t) void;
pub extern fn z_query_encoding(this_: [*c]const struct_z_loaned_query_t) [*c]const struct_z_loaned_encoding_t;
pub extern fn z_query_keyexpr(this_: [*c]const struct_z_loaned_query_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_query_loan(this_: [*c]const struct_z_owned_query_t) [*c]const struct_z_loaned_query_t;
pub extern fn z_query_loan_mut(this_: [*c]struct_z_owned_query_t) [*c]struct_z_loaned_query_t;
pub extern fn z_query_parameters(this_: [*c]const struct_z_loaned_query_t, parameters: [*c]struct_z_view_string_t) void;
pub extern fn z_query_payload(this_: [*c]const struct_z_loaned_query_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_query_payload_mut(this_: [*c]struct_z_loaned_query_t) [*c]struct_z_loaned_bytes_t;
pub extern fn z_query_reply(this_: [*c]const struct_z_loaned_query_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, payload: [*c]struct_z_moved_bytes_t, options: [*c]struct_z_query_reply_options_t) z_result_t;
pub extern fn z_query_reply_del(this_: [*c]const struct_z_loaned_query_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_z_query_reply_del_options_t) z_result_t;
pub extern fn z_query_reply_del_options_default(this_: [*c]struct_z_query_reply_del_options_t) void;
pub extern fn z_query_reply_err(this_: [*c]const struct_z_loaned_query_t, payload: [*c]struct_z_moved_bytes_t, options: [*c]struct_z_query_reply_err_options_t) z_result_t;
pub extern fn z_query_reply_err_options_default(this_: [*c]struct_z_query_reply_err_options_t) void;
pub extern fn z_query_reply_options_default(this_: [*c]struct_z_query_reply_options_t) void;
pub extern fn z_query_target_default() enum_z_query_target_t;
pub extern fn z_queryable_drop(this_: [*c]struct_z_moved_queryable_t) void;
pub extern fn z_queryable_id(queryable: [*c]const struct_z_loaned_queryable_t) struct_z_entity_global_id_t;
pub extern fn z_queryable_loan(this_: [*c]const struct_z_owned_queryable_t) [*c]const struct_z_loaned_queryable_t;
pub extern fn z_queryable_options_default(this_: [*c]struct_z_queryable_options_t) void;
pub extern fn z_random_fill(buf: ?*anyopaque, len: usize) void;
pub extern fn z_random_u16() u16;
pub extern fn z_random_u32() u32;
pub extern fn z_random_u64() u64;
pub extern fn z_random_u8() u8;
pub extern fn z_ref_shm_client_storage_global(this_: [*c]struct_z_owned_shm_client_storage_t) void;
pub extern fn z_reliability_default() enum_z_reliability_t;
pub extern fn z_reply_clone(dst: [*c]struct_z_owned_reply_t, this_: [*c]const struct_z_loaned_reply_t) void;
pub extern fn z_reply_drop(this_: [*c]struct_z_moved_reply_t) void;
pub extern fn z_reply_err(this_: [*c]const struct_z_loaned_reply_t) [*c]const struct_z_loaned_reply_err_t;
pub extern fn z_reply_err_clone(dst: [*c]struct_z_owned_reply_err_t, this_: [*c]const struct_z_loaned_reply_err_t) void;
pub extern fn z_reply_err_drop(this_: [*c]struct_z_moved_reply_err_t) void;
pub extern fn z_reply_err_encoding(this_: [*c]const struct_z_loaned_reply_err_t) [*c]const struct_z_loaned_encoding_t;
pub extern fn z_reply_err_loan(this_: [*c]const struct_z_owned_reply_err_t) [*c]const struct_z_loaned_reply_err_t;
pub extern fn z_reply_err_loan_mut(this_: [*c]struct_z_owned_reply_err_t) [*c]struct_z_loaned_reply_err_t;
pub extern fn z_reply_err_mut(this_: [*c]struct_z_loaned_reply_t) [*c]struct_z_loaned_reply_err_t;
pub extern fn z_reply_err_payload(this_: [*c]const struct_z_loaned_reply_err_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_reply_err_payload_mut(this_: [*c]struct_z_loaned_reply_err_t) [*c]struct_z_loaned_bytes_t;
pub extern fn z_reply_is_ok(this_: [*c]const struct_z_loaned_reply_t) bool;
pub extern fn z_reply_loan(this_: [*c]const struct_z_owned_reply_t) [*c]const struct_z_loaned_reply_t;
pub extern fn z_reply_loan_mut(this_: [*c]struct_z_owned_reply_t) [*c]struct_z_loaned_reply_t;
pub extern fn z_reply_ok(this_: [*c]const struct_z_loaned_reply_t) [*c]const struct_z_loaned_sample_t;
pub extern fn z_reply_ok_mut(this_: [*c]struct_z_loaned_reply_t) [*c]struct_z_loaned_sample_t;
pub extern fn z_reply_replier_id(this_: [*c]const struct_z_loaned_reply_t, out_id: [*c]struct_z_id_t) bool;
pub extern fn z_ring_channel_query_new(callback: [*c]struct_z_owned_closure_query_t, handler: [*c]struct_z_owned_ring_handler_query_t, capacity: usize) void;
pub extern fn z_ring_channel_reply_new(callback: [*c]struct_z_owned_closure_reply_t, handler: [*c]struct_z_owned_ring_handler_reply_t, capacity: usize) void;
pub extern fn z_ring_channel_sample_new(callback: [*c]struct_z_owned_closure_sample_t, handler: [*c]struct_z_owned_ring_handler_sample_t, capacity: usize) void;
pub extern fn z_ring_handler_query_drop(this_: [*c]struct_z_moved_ring_handler_query_t) void;
pub extern fn z_ring_handler_query_loan(this_: [*c]const struct_z_owned_ring_handler_query_t) [*c]const struct_z_loaned_ring_handler_query_t;
pub extern fn z_ring_handler_query_recv(this_: [*c]const struct_z_loaned_ring_handler_query_t, query: [*c]struct_z_owned_query_t) z_result_t;
pub extern fn z_ring_handler_query_try_recv(this_: [*c]const struct_z_loaned_ring_handler_query_t, query: [*c]struct_z_owned_query_t) z_result_t;
pub extern fn z_ring_handler_reply_drop(this_: [*c]struct_z_moved_ring_handler_reply_t) void;
pub extern fn z_ring_handler_reply_loan(this_: [*c]const struct_z_owned_ring_handler_reply_t) [*c]const struct_z_loaned_ring_handler_reply_t;
pub extern fn z_ring_handler_reply_recv(this_: [*c]const struct_z_loaned_ring_handler_reply_t, reply: [*c]struct_z_owned_reply_t) z_result_t;
pub extern fn z_ring_handler_reply_try_recv(this_: [*c]const struct_z_loaned_ring_handler_reply_t, reply: [*c]struct_z_owned_reply_t) z_result_t;
pub extern fn z_ring_handler_sample_drop(this_: [*c]struct_z_moved_ring_handler_sample_t) void;
pub extern fn z_ring_handler_sample_loan(this_: [*c]const struct_z_owned_ring_handler_sample_t) [*c]const struct_z_loaned_ring_handler_sample_t;
pub extern fn z_ring_handler_sample_recv(this_: [*c]const struct_z_loaned_ring_handler_sample_t, sample: [*c]struct_z_owned_sample_t) z_result_t;
pub extern fn z_ring_handler_sample_try_recv(this_: [*c]const struct_z_loaned_ring_handler_sample_t, sample: [*c]struct_z_owned_sample_t) z_result_t;
pub extern fn z_sample_attachment(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_sample_clone(dst: [*c]struct_z_owned_sample_t, this_: [*c]const struct_z_loaned_sample_t) void;
pub extern fn z_sample_congestion_control(this_: [*c]const struct_z_loaned_sample_t) enum_z_congestion_control_t;
pub extern fn z_sample_drop(this_: [*c]struct_z_moved_sample_t) void;
pub extern fn z_sample_encoding(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_loaned_encoding_t;
pub extern fn z_sample_express(this_: [*c]const struct_z_loaned_sample_t) bool;
pub extern fn z_sample_keyexpr(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_sample_kind(this_: [*c]const struct_z_loaned_sample_t) enum_z_sample_kind_t;
pub extern fn z_sample_loan(this_: [*c]const struct_z_owned_sample_t) [*c]const struct_z_loaned_sample_t;
pub extern fn z_sample_loan_mut(this_: [*c]struct_z_owned_sample_t) [*c]struct_z_loaned_sample_t;
pub extern fn z_sample_payload(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_loaned_bytes_t;
pub extern fn z_sample_payload_mut(this_: [*c]struct_z_loaned_sample_t) [*c]struct_z_loaned_bytes_t;
pub extern fn z_sample_priority(this_: [*c]const struct_z_loaned_sample_t) enum_z_priority_t;
pub extern fn z_sample_reliability(this_: [*c]const struct_z_loaned_sample_t) enum_z_reliability_t;
pub extern fn z_sample_source_info(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_loaned_source_info_t;
pub extern fn z_sample_timestamp(this_: [*c]const struct_z_loaned_sample_t) [*c]const struct_z_timestamp_t;
pub extern fn z_scout(config: [*c]struct_z_moved_config_t, callback: [*c]struct_z_moved_closure_hello_t, options: [*c]const struct_z_scout_options_t) z_result_t;
pub extern fn z_scout_options_default(this_: [*c]struct_z_scout_options_t) void;
pub extern fn z_session_drop(this_: [*c]struct_z_moved_session_t) void;
pub extern fn z_session_is_closed(session: [*c]const struct_z_loaned_session_t) bool;
pub extern fn z_session_loan(this_: [*c]const struct_z_owned_session_t) [*c]const struct_z_loaned_session_t;
pub extern fn z_session_loan_mut(this_: [*c]struct_z_owned_session_t) [*c]struct_z_loaned_session_t;
pub extern fn z_shm_client_drop(this_: [*c]struct_z_moved_shm_client_t) void;
pub extern fn z_shm_client_new(this_: [*c]struct_z_owned_shm_client_t, context: struct_zc_threadsafe_context_t, callbacks: struct_zc_shm_client_callbacks_t) void;
pub extern fn z_shm_client_storage_clone(this_: [*c]struct_z_owned_shm_client_storage_t, from: [*c]const struct_z_loaned_shm_client_storage_t) void;
pub extern fn z_shm_client_storage_drop(this_: [*c]struct_z_moved_shm_client_storage_t) void;
pub extern fn z_shm_client_storage_loan(this_: [*c]const struct_z_owned_shm_client_storage_t) [*c]const struct_z_loaned_shm_client_storage_t;
pub extern fn z_shm_client_storage_new(this_: [*c]struct_z_owned_shm_client_storage_t, clients: [*c]const struct_zc_loaned_shm_client_list_t, add_default_client_set: bool) z_result_t;
pub extern fn z_shm_client_storage_new_default(this_: [*c]struct_z_owned_shm_client_storage_t) void;
pub extern fn z_shm_clone(out: [*c]struct_z_owned_shm_t, this_: [*c]const struct_z_loaned_shm_t) void;
pub extern fn z_shm_data(this_: [*c]const struct_z_loaned_shm_t) [*c]const u8;
pub extern fn z_shm_drop(this_: [*c]struct_z_moved_shm_t) void;
pub extern fn z_shm_from_mut(this_: [*c]struct_z_owned_shm_t, that: [*c]struct_z_moved_shm_mut_t) void;
pub extern fn z_shm_len(this_: [*c]const struct_z_loaned_shm_t) usize;
pub extern fn z_shm_loan(this_: [*c]const struct_z_owned_shm_t) [*c]const struct_z_loaned_shm_t;
pub extern fn z_shm_loan_mut(this_: [*c]struct_z_owned_shm_t) [*c]struct_z_loaned_shm_t;
pub extern fn z_shm_mut_data(this_: [*c]const struct_z_loaned_shm_mut_t) [*c]const u8;
pub extern fn z_shm_mut_data_mut(this_: [*c]struct_z_loaned_shm_mut_t) [*c]u8;
pub extern fn z_shm_mut_drop(this_: [*c]struct_z_moved_shm_mut_t) void;
pub extern fn z_shm_mut_len(this_: [*c]const struct_z_loaned_shm_mut_t) usize;
pub extern fn z_shm_mut_loan(this_: [*c]const struct_z_owned_shm_mut_t) [*c]const struct_z_loaned_shm_mut_t;
pub extern fn z_shm_mut_loan_mut(this_: [*c]struct_z_owned_shm_mut_t) [*c]struct_z_loaned_shm_mut_t;
pub extern fn z_shm_mut_try_from_immut(this_: [*c]struct_z_owned_shm_mut_t, that: [*c]struct_z_moved_shm_t, immut: [*c]struct_z_owned_shm_t) z_result_t;
pub extern fn z_shm_provider_alloc(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) void;
pub extern fn z_shm_provider_alloc_gc(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) void;
pub extern fn z_shm_provider_alloc_gc_defrag(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) void;
pub extern fn z_shm_provider_alloc_gc_defrag_async(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t, result_context: struct_zc_threadsafe_context_t, result_callback: ?*const fn (?*anyopaque, [*c]struct_z_buf_layout_alloc_result_t) callconv(.c) void) z_result_t;
pub extern fn z_shm_provider_alloc_gc_defrag_blocking(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) void;
pub extern fn z_shm_provider_alloc_gc_defrag_dealloc(out_result: [*c]struct_z_buf_layout_alloc_result_t, provider: [*c]const struct_z_loaned_shm_provider_t, size: usize, alignment: struct_z_alloc_alignment_t) void;
pub extern fn z_shm_provider_available(provider: [*c]const struct_z_loaned_shm_provider_t) usize;
pub extern fn z_shm_provider_defragment(provider: [*c]const struct_z_loaned_shm_provider_t) usize;
pub extern fn z_shm_provider_drop(this_: [*c]struct_z_moved_shm_provider_t) void;
pub extern fn z_shm_provider_garbage_collect(provider: [*c]const struct_z_loaned_shm_provider_t) usize;
pub extern fn z_shm_provider_loan(this_: [*c]const struct_z_owned_shm_provider_t) [*c]const struct_z_loaned_shm_provider_t;
pub extern fn z_shm_provider_map(out_result: [*c]struct_z_owned_shm_mut_t, provider: [*c]const struct_z_loaned_shm_provider_t, allocated_chunk: struct_z_allocated_chunk_t, len: usize) z_result_t;
pub extern fn z_shm_provider_new(this_: [*c]struct_z_owned_shm_provider_t, id: z_protocol_id_t, context: struct_zc_context_t, callbacks: struct_zc_shm_provider_backend_callbacks_t) void;
pub extern fn z_shm_provider_threadsafe_new(this_: [*c]struct_z_owned_shm_provider_t, id: z_protocol_id_t, context: struct_zc_threadsafe_context_t, callbacks: struct_zc_shm_provider_backend_callbacks_t) void;
pub extern fn z_shm_try_mut(this_: [*c]struct_z_owned_shm_t) [*c]struct_z_loaned_shm_mut_t;
pub extern fn z_shm_try_reloan_mut(this_: [*c]struct_z_loaned_shm_t) [*c]struct_z_loaned_shm_mut_t;
pub extern fn z_sleep_ms(time: usize) z_result_t;
pub extern fn z_sleep_s(time: usize) z_result_t;
pub extern fn z_sleep_us(time: usize) z_result_t;
pub extern fn z_slice_clone(dst: [*c]struct_z_owned_slice_t, this_: [*c]const struct_z_loaned_slice_t) void;
pub extern fn z_slice_copy_from_buf(this_: [*c]struct_z_owned_slice_t, start: [*c]const u8, len: usize) z_result_t;
pub extern fn z_slice_data(this_: [*c]const struct_z_loaned_slice_t) [*c]const u8;
pub extern fn z_slice_drop(this_: [*c]struct_z_moved_slice_t) void;
pub extern fn z_slice_empty(this_: [*c]struct_z_owned_slice_t) void;
pub extern fn z_slice_from_buf(this_: [*c]struct_z_owned_slice_t, data: [*c]u8, len: usize, drop: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, context: ?*anyopaque) z_result_t;
pub extern fn z_slice_is_empty(this_: [*c]const struct_z_loaned_slice_t) bool;
pub extern fn z_slice_len(this_: [*c]const struct_z_loaned_slice_t) usize;
pub extern fn z_slice_loan(this_: [*c]const struct_z_owned_slice_t) [*c]const struct_z_loaned_slice_t;
pub extern fn z_source_info_drop(this_: [*c]struct_z_moved_source_info_t) void;
pub extern fn z_source_info_id(this_: [*c]const struct_z_loaned_source_info_t) struct_z_entity_global_id_t;
pub extern fn z_source_info_loan(this_: [*c]const struct_z_owned_source_info_t) [*c]const struct_z_loaned_source_info_t;
pub extern fn z_source_info_new(this_: [*c]struct_z_owned_source_info_t, source_id: [*c]const struct_z_entity_global_id_t, source_sn: u32) z_result_t;
pub extern fn z_source_info_sn(this_: [*c]const struct_z_loaned_source_info_t) u32;
pub extern fn z_string_array_clone(dst: [*c]struct_z_owned_string_array_t, this_: [*c]const struct_z_loaned_string_array_t) void;
pub extern fn z_string_array_drop(this_: [*c]struct_z_moved_string_array_t) void;
pub extern fn z_string_array_get(this_: [*c]const struct_z_loaned_string_array_t, index: usize) [*c]const struct_z_loaned_string_t;
pub extern fn z_string_array_is_empty(this_: [*c]const struct_z_loaned_string_array_t) bool;
pub extern fn z_string_array_len(this_: [*c]const struct_z_loaned_string_array_t) usize;
pub extern fn z_string_array_loan(this_: [*c]const struct_z_owned_string_array_t) [*c]const struct_z_loaned_string_array_t;
pub extern fn z_string_array_loan_mut(this_: [*c]struct_z_owned_string_array_t) [*c]struct_z_loaned_string_array_t;
pub extern fn z_string_array_new(this_: [*c]struct_z_owned_string_array_t) void;
pub extern fn z_string_array_push_by_alias(this_: [*c]struct_z_loaned_string_array_t, value: [*c]const struct_z_loaned_string_t) usize;
pub extern fn z_string_array_push_by_copy(this_: [*c]struct_z_loaned_string_array_t, value: [*c]const struct_z_loaned_string_t) usize;
pub extern fn z_string_as_slice(this_: [*c]const struct_z_loaned_string_t) [*c]const struct_z_loaned_slice_t;
pub extern fn z_string_clone(dst: [*c]struct_z_owned_string_t, this_: [*c]const struct_z_loaned_string_t) void;
pub extern fn z_string_copy_from_str(this_: [*c]struct_z_owned_string_t, str: [*c]const u8) z_result_t;
pub extern fn z_string_copy_from_substr(this_: [*c]struct_z_owned_string_t, str: [*c]const u8, len: usize) z_result_t;
pub extern fn z_string_data(this_: [*c]const struct_z_loaned_string_t) [*c]const u8;
pub extern fn z_string_drop(this_: [*c]struct_z_moved_string_t) void;
pub extern fn z_string_empty(this_: [*c]struct_z_owned_string_t) void;
pub extern fn z_string_from_str(this_: [*c]struct_z_owned_string_t, str: [*c]u8, drop: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, context: ?*anyopaque) z_result_t;
pub extern fn z_string_is_empty(this_: [*c]const struct_z_loaned_string_t) bool;
pub extern fn z_string_len(this_: [*c]const struct_z_loaned_string_t) usize;
pub extern fn z_string_loan(this_: [*c]const struct_z_owned_string_t) [*c]const struct_z_loaned_string_t;
pub extern fn z_subscriber_drop(this_: [*c]struct_z_moved_subscriber_t) void;
pub extern fn z_subscriber_id(subscriber: [*c]const struct_z_loaned_subscriber_t) struct_z_entity_global_id_t;
pub extern fn z_subscriber_keyexpr(subscriber: [*c]const struct_z_loaned_subscriber_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_subscriber_loan(this_: [*c]const struct_z_owned_subscriber_t) [*c]const struct_z_loaned_subscriber_t;
pub extern fn z_subscriber_options_default(this_: [*c]struct_z_subscriber_options_t) void;
pub extern fn z_task_detach(this_: [*c]struct_z_moved_task_t) void;
pub extern fn z_task_drop(this_: [*c]struct_z_moved_task_t) void;
pub extern fn z_task_init(this_: [*c]struct_z_owned_task_t, _attr: [*c]const struct_z_task_attr_t, fun: ?*const fn (?*anyopaque) callconv(.c) ?*anyopaque, arg: ?*anyopaque) z_result_t;
pub extern fn z_task_join(this_: [*c]struct_z_moved_task_t) z_result_t;
pub extern fn z_time_elapsed_ms(time: [*c]const struct_z_time_t) u64;
pub extern fn z_time_elapsed_s(time: [*c]const struct_z_time_t) u64;
pub extern fn z_time_elapsed_us(time: [*c]const struct_z_time_t) u64;
pub extern fn z_time_now() struct_z_time_t;
pub extern fn z_time_now_as_str(buf: [*c]const u8, len: usize) [*c]const u8;
pub extern fn z_timestamp_id(this_: [*c]const struct_z_timestamp_t) struct_z_id_t;
pub extern fn z_timestamp_new(this_: [*c]struct_z_timestamp_t, session: [*c]const struct_z_loaned_session_t) z_result_t;
pub extern fn z_timestamp_ntp64_time(this_: [*c]const struct_z_timestamp_t) u64;
pub extern fn z_undeclare_keyexpr(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]struct_z_moved_keyexpr_t) z_result_t;
pub extern fn z_undeclare_matching_listener(this_: [*c]struct_z_moved_matching_listener_t) z_result_t;
pub extern fn z_undeclare_publisher(this_: [*c]struct_z_moved_publisher_t) z_result_t;
pub extern fn z_undeclare_querier(this_: [*c]struct_z_moved_querier_t) z_result_t;
pub extern fn z_undeclare_queryable(this_: [*c]struct_z_moved_queryable_t) z_result_t;
pub extern fn z_undeclare_subscriber(this_: [*c]struct_z_moved_subscriber_t) z_result_t;
pub extern fn z_view_keyexpr_empty(this_: [*c]struct_z_view_keyexpr_t) void;
pub extern fn z_view_keyexpr_from_str(this_: [*c]struct_z_view_keyexpr_t, expr: [*c]const u8) z_result_t;
pub extern fn z_view_keyexpr_from_str_autocanonize(this_: [*c]struct_z_view_keyexpr_t, expr: [*c]u8) z_result_t;
pub extern fn z_view_keyexpr_from_str_unchecked(this_: [*c]struct_z_view_keyexpr_t, s: [*c]const u8) void;
pub extern fn z_view_keyexpr_from_substr(this_: [*c]struct_z_view_keyexpr_t, expr: [*c]const u8, len: usize) z_result_t;
pub extern fn z_view_keyexpr_from_substr_autocanonize(this_: [*c]struct_z_view_keyexpr_t, start: [*c]u8, len: [*c]usize) z_result_t;
pub extern fn z_view_keyexpr_from_substr_unchecked(this_: [*c]struct_z_view_keyexpr_t, start: [*c]const u8, len: usize) void;
pub extern fn z_view_keyexpr_is_empty(this_: [*c]const struct_z_view_keyexpr_t) bool;
pub extern fn z_view_keyexpr_loan(this_: [*c]const struct_z_view_keyexpr_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn z_view_slice_empty(this_: [*c]struct_z_view_slice_t) void;
pub extern fn z_view_slice_from_buf(this_: [*c]struct_z_view_slice_t, start: [*c]const u8, len: usize) z_result_t;
pub extern fn z_view_slice_is_empty(this_: [*c]const struct_z_view_slice_t) bool;
pub extern fn z_view_slice_loan(this_: [*c]const struct_z_view_slice_t) [*c]const struct_z_loaned_slice_t;
pub extern fn z_view_string_empty(this_: [*c]struct_z_view_string_t) void;
pub extern fn z_view_string_from_str(this_: [*c]struct_z_view_string_t, str: [*c]const u8) z_result_t;
pub extern fn z_view_string_from_substr(this_: [*c]struct_z_view_string_t, str: [*c]const u8, len: usize) z_result_t;
pub extern fn z_view_string_is_empty(this_: [*c]const struct_z_view_string_t) bool;
pub extern fn z_view_string_loan(this_: [*c]const struct_z_view_string_t) [*c]const struct_z_loaned_string_t;
pub extern fn z_whatami_to_view_string(whatami: enum_z_whatami_t, str_out: [*c]struct_z_view_string_t) z_result_t;
pub extern fn zc_cleanup_orphaned_shm_segments() void;
pub extern fn zc_closure_log(this_: [*c]struct_zc_owned_closure_log_t, call: ?*const fn (enum_zc_log_severity_t, [*c]const struct_z_loaned_string_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn zc_closure_log_call(closure: [*c]const struct_zc_loaned_closure_log_t, severity: enum_zc_log_severity_t, msg: [*c]const struct_z_loaned_string_t) void;
pub extern fn zc_closure_log_drop(closure_: [*c]struct_zc_moved_closure_log_t) void;
pub extern fn zc_closure_log_loan(closure: [*c]const struct_zc_owned_closure_log_t) [*c]const struct_zc_loaned_closure_log_t;
pub extern fn zc_concurrent_close_handle_drop(this_: [*c]struct_zc_moved_concurrent_close_handle_t) void;
pub extern fn zc_concurrent_close_handle_wait(handle: [*c]struct_zc_moved_concurrent_close_handle_t) z_result_t;
pub extern fn zc_config_from_env(this_: [*c]struct_z_owned_config_t) z_result_t;
pub extern fn zc_config_from_file(this_: [*c]struct_z_owned_config_t, path: [*c]const u8) z_result_t;
pub extern fn zc_config_from_str(this_: [*c]struct_z_owned_config_t, s: [*c]const u8) z_result_t;
pub extern fn zc_config_get_from_str(this_: [*c]const struct_z_loaned_config_t, key: [*c]const u8, out_value_string: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn zc_config_get_from_substr(this_: [*c]const struct_z_loaned_config_t, key: [*c]const u8, key_len: usize, out_value_string: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn zc_config_insert_json5(this_: [*c]struct_z_loaned_config_t, key: [*c]const u8, value: [*c]const u8) z_result_t;
pub extern fn zc_config_insert_json5_from_substr(this_: [*c]struct_z_loaned_config_t, key: [*c]const u8, key_len: usize, value: [*c]const u8, value_len: usize) z_result_t;
pub extern fn zc_config_to_string(config: [*c]const struct_z_loaned_config_t, out_config_string: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn zc_init_log_from_env_or(fallback_filter: [*c]const u8) z_result_t;
pub extern fn zc_init_log_with_callback(min_severity: enum_zc_log_severity_t, callback: [*c]struct_zc_moved_closure_log_t) void;
pub extern fn zc_internal_closure_log_check(this_: [*c]const struct_zc_owned_closure_log_t) bool;
pub extern fn zc_internal_closure_log_null(this_: [*c]struct_zc_owned_closure_log_t) void;
pub extern fn zc_internal_concurrent_close_handle_check(this_: [*c]const struct_zc_owned_concurrent_close_handle_t) bool;
pub extern fn zc_internal_concurrent_close_handle_null(this_: [*c]struct_zc_owned_concurrent_close_handle_t) void;
pub extern fn zc_internal_encoding_from_data(this_: [*c]struct_z_owned_encoding_t, data: struct_zc_internal_encoding_data_t) void;
pub extern fn zc_internal_encoding_get_data(this_: [*c]const struct_z_loaned_encoding_t) struct_zc_internal_encoding_data_t;
pub extern fn zc_internal_shm_client_list_check(this_: [*c]const struct_zc_owned_shm_client_list_t) bool;
pub extern fn zc_internal_shm_client_list_null(this_: [*c]struct_zc_owned_shm_client_list_t) void;
pub extern fn zc_locality_default() enum_zc_locality_t;
pub extern fn zc_reply_keyexpr_default() enum_zc_reply_keyexpr_t;
pub extern fn zc_shm_client_list_add_client(this_: [*c]struct_zc_loaned_shm_client_list_t, id: z_protocol_id_t, client: [*c]struct_z_moved_shm_client_t) z_result_t;
pub extern fn zc_shm_client_list_drop(this_: [*c]struct_zc_moved_shm_client_list_t) void;
pub extern fn zc_shm_client_list_loan(this_: [*c]const struct_zc_owned_shm_client_list_t) [*c]const struct_zc_loaned_shm_client_list_t;
pub extern fn zc_shm_client_list_loan_mut(this_: [*c]struct_zc_owned_shm_client_list_t) [*c]struct_zc_loaned_shm_client_list_t;
pub extern fn zc_shm_client_list_new(this_: [*c]struct_zc_owned_shm_client_list_t) void;
pub extern fn zc_stop_z_runtime() void;
pub extern fn zc_try_init_log_from_env() void;
pub extern fn ze_advanced_publisher_cache_options_default(this_: [*c]struct_ze_advanced_publisher_cache_options_t) void;
pub extern fn ze_advanced_publisher_declare_background_matching_listener(publisher: [*c]const struct_ze_loaned_advanced_publisher_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn ze_advanced_publisher_declare_matching_listener(publisher: [*c]const struct_ze_loaned_advanced_publisher_t, matching_listener: [*c]struct_z_owned_matching_listener_t, callback: [*c]struct_z_moved_closure_matching_status_t) z_result_t;
pub extern fn ze_advanced_publisher_delete(publisher: [*c]const struct_ze_loaned_advanced_publisher_t, options: [*c]struct_ze_advanced_publisher_delete_options_t) z_result_t;
pub extern fn ze_advanced_publisher_delete_options_default(this_: [*c]struct_ze_advanced_publisher_delete_options_t) void;
pub extern fn ze_advanced_publisher_drop(this_: [*c]struct_ze_moved_advanced_publisher_t) void;
pub extern fn ze_advanced_publisher_get_matching_status(this_: [*c]const struct_ze_loaned_advanced_publisher_t, matching_status: [*c]struct_z_matching_status_t) z_result_t;
pub extern fn ze_advanced_publisher_id(publisher: [*c]const struct_ze_loaned_advanced_publisher_t) struct_z_entity_global_id_t;
pub extern fn ze_advanced_publisher_keyexpr(publisher: [*c]const struct_ze_loaned_advanced_publisher_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn ze_advanced_publisher_loan(this_: [*c]const struct_ze_owned_advanced_publisher_t) [*c]const struct_ze_loaned_advanced_publisher_t;
pub extern fn ze_advanced_publisher_loan_mut(this_: [*c]struct_ze_owned_advanced_publisher_t) [*c]struct_ze_loaned_advanced_publisher_t;
pub extern fn ze_advanced_publisher_options_default(this_: [*c]struct_ze_advanced_publisher_options_t) void;
pub extern fn ze_advanced_publisher_put(this_: [*c]const struct_ze_loaned_advanced_publisher_t, payload: [*c]struct_z_moved_bytes_t, options: [*c]struct_ze_advanced_publisher_put_options_t) z_result_t;
pub extern fn ze_advanced_publisher_put_options_default(this_: [*c]struct_ze_advanced_publisher_put_options_t) void;
pub extern fn ze_advanced_publisher_sample_miss_detection_options_default(this_: [*c]struct_ze_advanced_publisher_sample_miss_detection_options_t) void;
pub extern fn ze_advanced_subscriber_declare_background_sample_miss_listener(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t, callback: [*c]struct_ze_moved_closure_miss_t) z_result_t;
pub extern fn ze_advanced_subscriber_declare_sample_miss_listener(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t, sample_miss_listener: [*c]struct_ze_owned_sample_miss_listener_t, callback: [*c]struct_ze_moved_closure_miss_t) z_result_t;
pub extern fn ze_advanced_subscriber_detect_publishers(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t, liveliness_subscriber: [*c]struct_z_owned_subscriber_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_liveliness_subscriber_options_t) z_result_t;
pub extern fn ze_advanced_subscriber_detect_publishers_background(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_z_liveliness_subscriber_options_t) z_result_t;
pub extern fn ze_advanced_subscriber_drop(this_: [*c]struct_ze_moved_advanced_subscriber_t) void;
pub extern fn ze_advanced_subscriber_history_options_default(this_: [*c]struct_ze_advanced_subscriber_history_options_t) void;
pub extern fn ze_advanced_subscriber_id(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t) struct_z_entity_global_id_t;
pub extern fn ze_advanced_subscriber_keyexpr(subscriber: [*c]const struct_ze_loaned_advanced_subscriber_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn ze_advanced_subscriber_last_sample_miss_detection_options_default(this_: [*c]struct_ze_advanced_subscriber_last_sample_miss_detection_options_t) void;
pub extern fn ze_advanced_subscriber_loan(this_: [*c]const struct_ze_owned_advanced_subscriber_t) [*c]const struct_ze_loaned_advanced_subscriber_t;
pub extern fn ze_advanced_subscriber_options_default(this_: [*c]struct_ze_advanced_subscriber_options_t) void;
pub extern fn ze_advanced_subscriber_recovery_options_default(this_: [*c]struct_ze_advanced_subscriber_recovery_options_t) void;
pub extern fn ze_closure_miss(this_: [*c]struct_ze_owned_closure_miss_t, call: ?*const fn ([*c]const struct_ze_miss_t, ?*anyopaque) callconv(.c) void, drop: ?*const fn (?*anyopaque) callconv(.c) void, context: ?*anyopaque) void;
pub extern fn ze_closure_miss_call(closure: [*c]const struct_ze_loaned_closure_miss_t, mathing_status: [*c]const struct_ze_miss_t) void;
pub extern fn ze_closure_miss_drop(closure_: [*c]struct_ze_moved_closure_miss_t) void;
pub extern fn ze_closure_miss_loan(closure: [*c]const struct_ze_owned_closure_miss_t) [*c]const struct_ze_loaned_closure_miss_t;
pub extern fn ze_declare_advanced_publisher(session: [*c]const struct_z_loaned_session_t, publisher: [*c]struct_ze_owned_advanced_publisher_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_ze_advanced_publisher_options_t) z_result_t;
pub extern fn ze_declare_advanced_subscriber(session: [*c]const struct_z_loaned_session_t, subscriber: [*c]struct_ze_owned_advanced_subscriber_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_ze_advanced_subscriber_options_t) z_result_t;
pub extern fn ze_declare_background_advanced_subscriber(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_ze_advanced_subscriber_options_t) z_result_t;
pub extern fn ze_declare_background_publication_cache(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_ze_publication_cache_options_t) z_result_t;
pub extern fn ze_declare_background_querying_subscriber(session: [*c]const struct_z_loaned_session_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_ze_querying_subscriber_options_t) z_result_t;
pub extern fn ze_declare_publication_cache(session: [*c]const struct_z_loaned_session_t, pub_cache: [*c]struct_ze_owned_publication_cache_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_ze_publication_cache_options_t) z_result_t;
pub extern fn ze_declare_querying_subscriber(session: [*c]const struct_z_loaned_session_t, querying_subscriber: [*c]struct_ze_owned_querying_subscriber_t, key_expr: [*c]const struct_z_loaned_keyexpr_t, callback: [*c]struct_z_moved_closure_sample_t, options: [*c]struct_ze_querying_subscriber_options_t) z_result_t;
pub extern fn ze_deserialize_bool(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]bool) z_result_t;
pub extern fn ze_deserialize_double(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]f64) z_result_t;
pub extern fn ze_deserialize_float(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]f32) z_result_t;
pub extern fn ze_deserialize_int16(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]i16) z_result_t;
pub extern fn ze_deserialize_int32(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]i32) z_result_t;
pub extern fn ze_deserialize_int64(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]i64) z_result_t;
pub extern fn ze_deserialize_int8(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]i8) z_result_t;
pub extern fn ze_deserialize_slice(this_: [*c]const struct_z_loaned_bytes_t, slice: [*c]struct_z_owned_slice_t) z_result_t;
pub extern fn ze_deserialize_string(this_: [*c]const struct_z_loaned_bytes_t, str: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn ze_deserialize_uint16(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]u16) z_result_t;
pub extern fn ze_deserialize_uint32(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]u32) z_result_t;
pub extern fn ze_deserialize_uint64(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]u64) z_result_t;
pub extern fn ze_deserialize_uint8(this_: [*c]const struct_z_loaned_bytes_t, dst: [*c]u8) z_result_t;
pub extern fn ze_deserializer_deserialize_bool(this_: [*c]struct_ze_deserializer_t, dst: [*c]bool) z_result_t;
pub extern fn ze_deserializer_deserialize_double(this_: [*c]struct_ze_deserializer_t, dst: [*c]f64) z_result_t;
pub extern fn ze_deserializer_deserialize_float(this_: [*c]struct_ze_deserializer_t, dst: [*c]f32) z_result_t;
pub extern fn ze_deserializer_deserialize_int16(this_: [*c]struct_ze_deserializer_t, dst: [*c]i16) z_result_t;
pub extern fn ze_deserializer_deserialize_int32(this_: [*c]struct_ze_deserializer_t, dst: [*c]i32) z_result_t;
pub extern fn ze_deserializer_deserialize_int64(this_: [*c]struct_ze_deserializer_t, dst: [*c]i64) z_result_t;
pub extern fn ze_deserializer_deserialize_int8(this_: [*c]struct_ze_deserializer_t, dst: [*c]i8) z_result_t;
pub extern fn ze_deserializer_deserialize_sequence_length(this_: [*c]struct_ze_deserializer_t, len: [*c]usize) z_result_t;
pub extern fn ze_deserializer_deserialize_slice(this_: [*c]struct_ze_deserializer_t, slice: [*c]struct_z_owned_slice_t) z_result_t;
pub extern fn ze_deserializer_deserialize_string(this_: [*c]struct_ze_deserializer_t, str: [*c]struct_z_owned_string_t) z_result_t;
pub extern fn ze_deserializer_deserialize_uint16(this_: [*c]struct_ze_deserializer_t, dst: [*c]u16) z_result_t;
pub extern fn ze_deserializer_deserialize_uint32(this_: [*c]struct_ze_deserializer_t, dst: [*c]u32) z_result_t;
pub extern fn ze_deserializer_deserialize_uint64(this_: [*c]struct_ze_deserializer_t, dst: [*c]u64) z_result_t;
pub extern fn ze_deserializer_deserialize_uint8(this_: [*c]struct_ze_deserializer_t, dst: [*c]u8) z_result_t;
pub extern fn ze_deserializer_from_bytes(this_: [*c]const struct_z_loaned_bytes_t) struct_ze_deserializer_t;
pub extern fn ze_deserializer_is_done(this_: [*c]const struct_ze_deserializer_t) bool;
pub extern fn ze_internal_advanced_publisher_check(this_: [*c]const struct_ze_owned_advanced_publisher_t) bool;
pub extern fn ze_internal_advanced_publisher_null(this_: [*c]struct_ze_owned_advanced_publisher_t) void;
pub extern fn ze_internal_advanced_subscriber_check(this_: [*c]const struct_ze_owned_advanced_subscriber_t) bool;
pub extern fn ze_internal_advanced_subscriber_null(this_: [*c]struct_ze_owned_advanced_subscriber_t) void;
pub extern fn ze_internal_closure_miss_check(this_: [*c]const struct_ze_owned_closure_miss_t) bool;
pub extern fn ze_internal_closure_miss_null(this_: [*c]struct_ze_owned_closure_miss_t) void;
pub extern fn ze_internal_publication_cache_check(this_: [*c]const struct_ze_owned_publication_cache_t) bool;
pub extern fn ze_internal_publication_cache_null(this_: [*c]struct_ze_owned_publication_cache_t) void;
pub extern fn ze_internal_querying_subscriber_check(this_: [*c]const struct_ze_owned_querying_subscriber_t) bool;
pub extern fn ze_internal_querying_subscriber_null(this_: [*c]struct_ze_owned_querying_subscriber_t) void;
pub extern fn ze_internal_sample_miss_listener_check(this_: [*c]const struct_ze_owned_sample_miss_listener_t) bool;
pub extern fn ze_internal_sample_miss_listener_null(this_: [*c]struct_ze_owned_sample_miss_listener_t) void;
pub extern fn ze_internal_serializer_check(this_: [*c]const struct_ze_owned_serializer_t) bool;
pub extern fn ze_internal_serializer_null(this_: [*c]struct_ze_owned_serializer_t) void;
pub extern fn ze_publication_cache_drop(this_: [*c]struct_ze_moved_publication_cache_t) void;
pub extern fn ze_publication_cache_keyexpr(this_: [*c]const struct_ze_loaned_publication_cache_t) [*c]const struct_z_loaned_keyexpr_t;
pub extern fn ze_publication_cache_loan(this_: [*c]const struct_ze_owned_publication_cache_t) [*c]const struct_ze_loaned_publication_cache_t;
pub extern fn ze_publication_cache_options_default(this_: [*c]struct_ze_publication_cache_options_t) void;
pub extern fn ze_querying_subscriber_drop(this_: [*c]struct_ze_moved_querying_subscriber_t) void;
pub extern fn ze_querying_subscriber_get(this_: [*c]const struct_ze_loaned_querying_subscriber_t, selector: [*c]const struct_z_loaned_keyexpr_t, options: [*c]struct_z_get_options_t) z_result_t;
pub extern fn ze_querying_subscriber_loan(this_: [*c]const struct_ze_owned_querying_subscriber_t) [*c]const struct_ze_loaned_querying_subscriber_t;
pub extern fn ze_querying_subscriber_options_default(this_: [*c]struct_ze_querying_subscriber_options_t) void;
pub extern fn ze_sample_miss_listener_drop(this_: [*c]struct_ze_moved_sample_miss_listener_t) void;
pub extern fn ze_serialize_bool(this_: [*c]struct_z_owned_bytes_t, val: bool) z_result_t;
pub extern fn ze_serialize_buf(this_: [*c]struct_z_owned_bytes_t, data: [*c]const u8, len: usize) z_result_t;
pub extern fn ze_serialize_double(this_: [*c]struct_z_owned_bytes_t, val: f64) z_result_t;
pub extern fn ze_serialize_float(this_: [*c]struct_z_owned_bytes_t, val: f32) z_result_t;
pub extern fn ze_serialize_int16(this_: [*c]struct_z_owned_bytes_t, val: i16) z_result_t;
pub extern fn ze_serialize_int32(this_: [*c]struct_z_owned_bytes_t, val: i32) z_result_t;
pub extern fn ze_serialize_int64(this_: [*c]struct_z_owned_bytes_t, val: i64) z_result_t;
pub extern fn ze_serialize_int8(this_: [*c]struct_z_owned_bytes_t, val: i8) z_result_t;
pub extern fn ze_serialize_slice(this_: [*c]struct_z_owned_bytes_t, slice: [*c]const struct_z_loaned_slice_t) z_result_t;
pub extern fn ze_serialize_str(this_: [*c]struct_z_owned_bytes_t, str: [*c]const u8) z_result_t;
pub extern fn ze_serialize_string(this_: [*c]struct_z_owned_bytes_t, str: [*c]const struct_z_loaned_string_t) z_result_t;
pub extern fn ze_serialize_substr(this_: [*c]struct_z_owned_bytes_t, start: [*c]const u8, len: usize) z_result_t;
pub extern fn ze_serialize_uint16(this_: [*c]struct_z_owned_bytes_t, val: u16) z_result_t;
pub extern fn ze_serialize_uint32(this_: [*c]struct_z_owned_bytes_t, val: u32) z_result_t;
pub extern fn ze_serialize_uint64(this_: [*c]struct_z_owned_bytes_t, val: u64) z_result_t;
pub extern fn ze_serialize_uint8(this_: [*c]struct_z_owned_bytes_t, val: u8) z_result_t;
pub extern fn ze_serializer_drop(this_: [*c]struct_ze_moved_serializer_t) void;
pub extern fn ze_serializer_empty(this_: [*c]struct_ze_owned_serializer_t) z_result_t;
pub extern fn ze_serializer_finish(this_: [*c]struct_ze_moved_serializer_t, bytes: [*c]struct_z_owned_bytes_t) void;
pub extern fn ze_serializer_loan(this_: [*c]const struct_ze_owned_serializer_t) [*c]const struct_ze_loaned_serializer_t;
pub extern fn ze_serializer_loan_mut(this_: [*c]struct_ze_owned_serializer_t) [*c]struct_ze_loaned_serializer_t;
pub extern fn ze_serializer_serialize_bool(this_: [*c]struct_ze_loaned_serializer_t, val: bool) z_result_t;
pub extern fn ze_serializer_serialize_buf(this_: [*c]struct_ze_loaned_serializer_t, data: [*c]const u8, len: usize) z_result_t;
pub extern fn ze_serializer_serialize_double(this_: [*c]struct_ze_loaned_serializer_t, val: f64) z_result_t;
pub extern fn ze_serializer_serialize_float(this_: [*c]struct_ze_loaned_serializer_t, val: f32) z_result_t;
pub extern fn ze_serializer_serialize_int16(this_: [*c]struct_ze_loaned_serializer_t, val: i16) z_result_t;
pub extern fn ze_serializer_serialize_int32(this_: [*c]struct_ze_loaned_serializer_t, val: i32) z_result_t;
pub extern fn ze_serializer_serialize_int64(this_: [*c]struct_ze_loaned_serializer_t, val: i64) z_result_t;
pub extern fn ze_serializer_serialize_int8(this_: [*c]struct_ze_loaned_serializer_t, val: i8) z_result_t;
pub extern fn ze_serializer_serialize_sequence_length(this_: [*c]struct_ze_loaned_serializer_t, len: usize) z_result_t;
pub extern fn ze_serializer_serialize_slice(this_: [*c]struct_ze_loaned_serializer_t, slice: [*c]const struct_z_loaned_slice_t) z_result_t;
pub extern fn ze_serializer_serialize_str(this_: [*c]struct_ze_loaned_serializer_t, str: [*c]const u8) z_result_t;
pub extern fn ze_serializer_serialize_string(this_: [*c]struct_ze_loaned_serializer_t, str: [*c]const struct_z_loaned_string_t) z_result_t;
pub extern fn ze_serializer_serialize_substr(this_: [*c]struct_ze_loaned_serializer_t, start: [*c]const u8, len: usize) z_result_t;
pub extern fn ze_serializer_serialize_uint16(this_: [*c]struct_ze_loaned_serializer_t, val: u16) z_result_t;
pub extern fn ze_serializer_serialize_uint32(this_: [*c]struct_ze_loaned_serializer_t, val: u32) z_result_t;
pub extern fn ze_serializer_serialize_uint64(this_: [*c]struct_ze_loaned_serializer_t, val: u64) z_result_t;
pub extern fn ze_serializer_serialize_uint8(this_: [*c]struct_ze_loaned_serializer_t, val: u8) z_result_t;
pub extern fn ze_undeclare_advanced_publisher(this_: [*c]struct_ze_moved_advanced_publisher_t) z_result_t;
pub extern fn ze_undeclare_advanced_subscriber(this_: [*c]struct_ze_moved_advanced_subscriber_t) z_result_t;
pub extern fn ze_undeclare_publication_cache(this_: [*c]struct_ze_moved_publication_cache_t) z_result_t;
pub extern fn ze_undeclare_querying_subscriber(this_: [*c]struct_ze_moved_querying_subscriber_t) z_result_t;
pub extern fn ze_undeclare_sample_miss_listener(this_: [*c]struct_ze_moved_sample_miss_listener_t) z_result_t;
pub fn z_alloc_layout_move(arg_x: [*c]z_owned_alloc_layout_t) callconv(.c) [*c]z_moved_alloc_layout_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_alloc_layout_t, @ptrCast(@alignCast(x)));
}
pub fn z_bytes_move(arg_x: [*c]z_owned_bytes_t) callconv(.c) [*c]z_moved_bytes_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_bytes_t, @ptrCast(@alignCast(x)));
}
pub fn z_bytes_writer_move(arg_x: [*c]z_owned_bytes_writer_t) callconv(.c) [*c]z_moved_bytes_writer_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_bytes_writer_t, @ptrCast(@alignCast(x)));
}
pub fn z_chunk_alloc_result_move(arg_x: [*c]z_owned_chunk_alloc_result_t) callconv(.c) [*c]z_moved_chunk_alloc_result_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_chunk_alloc_result_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_hello_move(arg_x: [*c]z_owned_closure_hello_t) callconv(.c) [*c]z_moved_closure_hello_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_hello_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_matching_status_move(arg_x: [*c]z_owned_closure_matching_status_t) callconv(.c) [*c]z_moved_closure_matching_status_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_matching_status_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_query_move(arg_x: [*c]z_owned_closure_query_t) callconv(.c) [*c]z_moved_closure_query_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_query_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_reply_move(arg_x: [*c]z_owned_closure_reply_t) callconv(.c) [*c]z_moved_closure_reply_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_reply_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_sample_move(arg_x: [*c]z_owned_closure_sample_t) callconv(.c) [*c]z_moved_closure_sample_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_sample_t, @ptrCast(@alignCast(x)));
}
pub fn z_closure_zid_move(arg_x: [*c]z_owned_closure_zid_t) callconv(.c) [*c]z_moved_closure_zid_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_closure_zid_t, @ptrCast(@alignCast(x)));
}
pub fn z_condvar_move(arg_x: [*c]z_owned_condvar_t) callconv(.c) [*c]z_moved_condvar_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_condvar_t, @ptrCast(@alignCast(x)));
}
pub fn z_config_move(arg_x: [*c]z_owned_config_t) callconv(.c) [*c]z_moved_config_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_config_t, @ptrCast(@alignCast(x)));
}
pub fn z_encoding_move(arg_x: [*c]z_owned_encoding_t) callconv(.c) [*c]z_moved_encoding_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_encoding_t, @ptrCast(@alignCast(x)));
}
pub fn z_fifo_handler_query_move(arg_x: [*c]z_owned_fifo_handler_query_t) callconv(.c) [*c]z_moved_fifo_handler_query_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_fifo_handler_query_t, @ptrCast(@alignCast(x)));
}
pub fn z_fifo_handler_reply_move(arg_x: [*c]z_owned_fifo_handler_reply_t) callconv(.c) [*c]z_moved_fifo_handler_reply_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_fifo_handler_reply_t, @ptrCast(@alignCast(x)));
}
pub fn z_fifo_handler_sample_move(arg_x: [*c]z_owned_fifo_handler_sample_t) callconv(.c) [*c]z_moved_fifo_handler_sample_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_fifo_handler_sample_t, @ptrCast(@alignCast(x)));
}
pub fn z_hello_move(arg_x: [*c]z_owned_hello_t) callconv(.c) [*c]z_moved_hello_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_hello_t, @ptrCast(@alignCast(x)));
}
pub fn z_keyexpr_move(arg_x: [*c]z_owned_keyexpr_t) callconv(.c) [*c]z_moved_keyexpr_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_keyexpr_t, @ptrCast(@alignCast(x)));
}
pub fn z_liveliness_token_move(arg_x: [*c]z_owned_liveliness_token_t) callconv(.c) [*c]z_moved_liveliness_token_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_liveliness_token_t, @ptrCast(@alignCast(x)));
}
pub fn z_matching_listener_move(arg_x: [*c]z_owned_matching_listener_t) callconv(.c) [*c]z_moved_matching_listener_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_matching_listener_t, @ptrCast(@alignCast(x)));
}
pub fn z_memory_layout_move(arg_x: [*c]z_owned_memory_layout_t) callconv(.c) [*c]z_moved_memory_layout_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_memory_layout_t, @ptrCast(@alignCast(x)));
}
pub fn z_mutex_move(arg_x: [*c]z_owned_mutex_t) callconv(.c) [*c]z_moved_mutex_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_mutex_t, @ptrCast(@alignCast(x)));
}
pub fn z_publisher_move(arg_x: [*c]z_owned_publisher_t) callconv(.c) [*c]z_moved_publisher_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_publisher_t, @ptrCast(@alignCast(x)));
}
pub fn z_querier_move(arg_x: [*c]z_owned_querier_t) callconv(.c) [*c]z_moved_querier_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_querier_t, @ptrCast(@alignCast(x)));
}
pub fn z_query_move(arg_x: [*c]z_owned_query_t) callconv(.c) [*c]z_moved_query_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_query_t, @ptrCast(@alignCast(x)));
}
pub fn z_queryable_move(arg_x: [*c]z_owned_queryable_t) callconv(.c) [*c]z_moved_queryable_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_queryable_t, @ptrCast(@alignCast(x)));
}
pub fn z_reply_move(arg_x: [*c]z_owned_reply_t) callconv(.c) [*c]z_moved_reply_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_reply_t, @ptrCast(@alignCast(x)));
}
pub fn z_reply_err_move(arg_x: [*c]z_owned_reply_err_t) callconv(.c) [*c]z_moved_reply_err_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_reply_err_t, @ptrCast(@alignCast(x)));
}
pub fn z_ring_handler_query_move(arg_x: [*c]z_owned_ring_handler_query_t) callconv(.c) [*c]z_moved_ring_handler_query_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_ring_handler_query_t, @ptrCast(@alignCast(x)));
}
pub fn z_ring_handler_reply_move(arg_x: [*c]z_owned_ring_handler_reply_t) callconv(.c) [*c]z_moved_ring_handler_reply_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_ring_handler_reply_t, @ptrCast(@alignCast(x)));
}
pub fn z_ring_handler_sample_move(arg_x: [*c]z_owned_ring_handler_sample_t) callconv(.c) [*c]z_moved_ring_handler_sample_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_ring_handler_sample_t, @ptrCast(@alignCast(x)));
}
pub fn z_sample_move(arg_x: [*c]z_owned_sample_t) callconv(.c) [*c]z_moved_sample_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_sample_t, @ptrCast(@alignCast(x)));
}
pub fn z_session_move(arg_x: [*c]z_owned_session_t) callconv(.c) [*c]z_moved_session_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_session_t, @ptrCast(@alignCast(x)));
}
pub fn z_shm_client_move(arg_x: [*c]z_owned_shm_client_t) callconv(.c) [*c]z_moved_shm_client_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_shm_client_t, @ptrCast(@alignCast(x)));
}
pub fn z_shm_client_storage_move(arg_x: [*c]z_owned_shm_client_storage_t) callconv(.c) [*c]z_moved_shm_client_storage_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_shm_client_storage_t, @ptrCast(@alignCast(x)));
}
pub fn z_shm_move(arg_x: [*c]z_owned_shm_t) callconv(.c) [*c]z_moved_shm_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_shm_t, @ptrCast(@alignCast(x)));
}
pub fn z_shm_mut_move(arg_x: [*c]z_owned_shm_mut_t) callconv(.c) [*c]z_moved_shm_mut_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_shm_mut_t, @ptrCast(@alignCast(x)));
}
pub fn z_shm_provider_move(arg_x: [*c]z_owned_shm_provider_t) callconv(.c) [*c]z_moved_shm_provider_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_shm_provider_t, @ptrCast(@alignCast(x)));
}
pub fn z_slice_move(arg_x: [*c]z_owned_slice_t) callconv(.c) [*c]z_moved_slice_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_slice_t, @ptrCast(@alignCast(x)));
}
pub fn z_source_info_move(arg_x: [*c]z_owned_source_info_t) callconv(.c) [*c]z_moved_source_info_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_source_info_t, @ptrCast(@alignCast(x)));
}
pub fn z_string_array_move(arg_x: [*c]z_owned_string_array_t) callconv(.c) [*c]z_moved_string_array_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_string_array_t, @ptrCast(@alignCast(x)));
}
pub fn z_string_move(arg_x: [*c]z_owned_string_t) callconv(.c) [*c]z_moved_string_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_string_t, @ptrCast(@alignCast(x)));
}
pub fn z_subscriber_move(arg_x: [*c]z_owned_subscriber_t) callconv(.c) [*c]z_moved_subscriber_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_subscriber_t, @ptrCast(@alignCast(x)));
}
pub fn z_task_move(arg_x: [*c]z_owned_task_t) callconv(.c) [*c]z_moved_task_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]z_moved_task_t, @ptrCast(@alignCast(x)));
}
pub fn zc_closure_log_move(arg_x: [*c]zc_owned_closure_log_t) callconv(.c) [*c]zc_moved_closure_log_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]zc_moved_closure_log_t, @ptrCast(@alignCast(x)));
}
pub fn zc_concurrent_close_handle_move(arg_x: [*c]zc_owned_concurrent_close_handle_t) callconv(.c) [*c]zc_moved_concurrent_close_handle_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]zc_moved_concurrent_close_handle_t, @ptrCast(@alignCast(x)));
}
pub fn zc_shm_client_list_move(arg_x: [*c]zc_owned_shm_client_list_t) callconv(.c) [*c]zc_moved_shm_client_list_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]zc_moved_shm_client_list_t, @ptrCast(@alignCast(x)));
}
pub fn ze_advanced_publisher_move(arg_x: [*c]ze_owned_advanced_publisher_t) callconv(.c) [*c]ze_moved_advanced_publisher_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_advanced_publisher_t, @ptrCast(@alignCast(x)));
}
pub fn ze_advanced_subscriber_move(arg_x: [*c]ze_owned_advanced_subscriber_t) callconv(.c) [*c]ze_moved_advanced_subscriber_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_advanced_subscriber_t, @ptrCast(@alignCast(x)));
}
pub fn ze_closure_miss_move(arg_x: [*c]ze_owned_closure_miss_t) callconv(.c) [*c]ze_moved_closure_miss_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_closure_miss_t, @ptrCast(@alignCast(x)));
}
pub fn ze_publication_cache_move(arg_x: [*c]ze_owned_publication_cache_t) callconv(.c) [*c]ze_moved_publication_cache_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_publication_cache_t, @ptrCast(@alignCast(x)));
}
pub fn ze_querying_subscriber_move(arg_x: [*c]ze_owned_querying_subscriber_t) callconv(.c) [*c]ze_moved_querying_subscriber_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_querying_subscriber_t, @ptrCast(@alignCast(x)));
}
pub fn ze_sample_miss_listener_move(arg_x: [*c]ze_owned_sample_miss_listener_t) callconv(.c) [*c]ze_moved_sample_miss_listener_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_sample_miss_listener_t, @ptrCast(@alignCast(x)));
}
pub fn ze_serializer_move(arg_x: [*c]ze_owned_serializer_t) callconv(.c) [*c]ze_moved_serializer_t {
    var x = arg_x;
    _ = &x;
    return @as([*c]ze_moved_serializer_t, @ptrCast(@alignCast(x)));
}
pub fn z_alloc_layout_take(arg_this_: [*c]z_owned_alloc_layout_t, arg_x: [*c]z_moved_alloc_layout_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_alloc_layout_null(&x.*._this);
}
pub fn z_bytes_take(arg_this_: [*c]z_owned_bytes_t, arg_x: [*c]z_moved_bytes_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_bytes_null(&x.*._this);
}
pub fn z_bytes_writer_take(arg_this_: [*c]z_owned_bytes_writer_t, arg_x: [*c]z_moved_bytes_writer_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_bytes_writer_null(&x.*._this);
}
pub fn z_chunk_alloc_result_take(arg_this_: [*c]z_owned_chunk_alloc_result_t, arg_x: [*c]z_moved_chunk_alloc_result_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_chunk_alloc_result_null(&x.*._this);
}
pub fn z_closure_hello_take(arg_this_: [*c]z_owned_closure_hello_t, arg_x: [*c]z_moved_closure_hello_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_closure_hello_null(&x.*._this);
}
pub fn z_closure_matching_status_take(arg_closure_: [*c]z_owned_closure_matching_status_t, arg_x: [*c]z_moved_closure_matching_status_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    z_internal_closure_matching_status_null(&x.*._this);
}
pub fn z_closure_query_take(arg_closure_: [*c]z_owned_closure_query_t, arg_x: [*c]z_moved_closure_query_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    z_internal_closure_query_null(&x.*._this);
}
pub fn z_closure_reply_take(arg_closure_: [*c]z_owned_closure_reply_t, arg_x: [*c]z_moved_closure_reply_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    z_internal_closure_reply_null(&x.*._this);
}
pub fn z_closure_sample_take(arg_closure_: [*c]z_owned_closure_sample_t, arg_x: [*c]z_moved_closure_sample_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    z_internal_closure_sample_null(&x.*._this);
}
pub fn z_closure_zid_take(arg_closure_: [*c]z_owned_closure_zid_t, arg_x: [*c]z_moved_closure_zid_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    z_internal_closure_zid_null(&x.*._this);
}
pub fn z_condvar_take(arg_this_: [*c]z_owned_condvar_t, arg_x: [*c]z_moved_condvar_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_condvar_null(&x.*._this);
}
pub fn z_config_take(arg_this_: [*c]z_owned_config_t, arg_x: [*c]z_moved_config_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_config_null(&x.*._this);
}
pub fn z_encoding_take(arg_this_: [*c]z_owned_encoding_t, arg_x: [*c]z_moved_encoding_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_encoding_null(&x.*._this);
}
pub fn z_fifo_handler_query_take(arg_this_: [*c]z_owned_fifo_handler_query_t, arg_x: [*c]z_moved_fifo_handler_query_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_fifo_handler_query_null(&x.*._this);
}
pub fn z_fifo_handler_reply_take(arg_this_: [*c]z_owned_fifo_handler_reply_t, arg_x: [*c]z_moved_fifo_handler_reply_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_fifo_handler_reply_null(&x.*._this);
}
pub fn z_fifo_handler_sample_take(arg_this_: [*c]z_owned_fifo_handler_sample_t, arg_x: [*c]z_moved_fifo_handler_sample_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_fifo_handler_sample_null(&x.*._this);
}
pub fn z_hello_take(arg_this_: [*c]z_owned_hello_t, arg_x: [*c]z_moved_hello_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_hello_null(&x.*._this);
}
pub fn z_keyexpr_take(arg_this_: [*c]z_owned_keyexpr_t, arg_x: [*c]z_moved_keyexpr_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_keyexpr_null(&x.*._this);
}
pub fn z_liveliness_token_take(arg_this_: [*c]z_owned_liveliness_token_t, arg_x: [*c]z_moved_liveliness_token_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_liveliness_token_null(&x.*._this);
}
pub fn z_matching_listener_take(arg_this_: [*c]z_owned_matching_listener_t, arg_x: [*c]z_moved_matching_listener_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_matching_listener_null(&x.*._this);
}
pub fn z_memory_layout_take(arg_this_: [*c]z_owned_memory_layout_t, arg_x: [*c]z_moved_memory_layout_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_memory_layout_null(&x.*._this);
}
pub fn z_mutex_take(arg_this_: [*c]z_owned_mutex_t, arg_x: [*c]z_moved_mutex_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_mutex_null(&x.*._this);
}
pub fn z_publisher_take(arg_this_: [*c]z_owned_publisher_t, arg_x: [*c]z_moved_publisher_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_publisher_null(&x.*._this);
}
pub fn z_querier_take(arg_this_: [*c]z_owned_querier_t, arg_x: [*c]z_moved_querier_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_querier_null(&x.*._this);
}
pub fn z_query_take(arg_this_: [*c]z_owned_query_t, arg_x: [*c]z_moved_query_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_query_null(&x.*._this);
}
pub fn z_queryable_take(arg_this_: [*c]z_owned_queryable_t, arg_x: [*c]z_moved_queryable_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_queryable_null(&x.*._this);
}
pub fn z_reply_take(arg_this_: [*c]z_owned_reply_t, arg_x: [*c]z_moved_reply_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_reply_null(&x.*._this);
}
pub fn z_reply_err_take(arg_this_: [*c]z_owned_reply_err_t, arg_x: [*c]z_moved_reply_err_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_reply_err_null(&x.*._this);
}
pub fn z_ring_handler_query_take(arg_this_: [*c]z_owned_ring_handler_query_t, arg_x: [*c]z_moved_ring_handler_query_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_ring_handler_query_null(&x.*._this);
}
pub fn z_ring_handler_reply_take(arg_this_: [*c]z_owned_ring_handler_reply_t, arg_x: [*c]z_moved_ring_handler_reply_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_ring_handler_reply_null(&x.*._this);
}
pub fn z_ring_handler_sample_take(arg_this_: [*c]z_owned_ring_handler_sample_t, arg_x: [*c]z_moved_ring_handler_sample_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_ring_handler_sample_null(&x.*._this);
}
pub fn z_sample_take(arg_this_: [*c]z_owned_sample_t, arg_x: [*c]z_moved_sample_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_sample_null(&x.*._this);
}
pub fn z_session_take(arg_this_: [*c]z_owned_session_t, arg_x: [*c]z_moved_session_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_session_null(&x.*._this);
}
pub fn z_shm_client_take(arg_this_: [*c]z_owned_shm_client_t, arg_x: [*c]z_moved_shm_client_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_shm_client_null(&x.*._this);
}
pub fn z_shm_client_storage_take(arg_this_: [*c]z_owned_shm_client_storage_t, arg_x: [*c]z_moved_shm_client_storage_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_shm_client_storage_null(&x.*._this);
}
pub fn z_shm_take(arg_this_: [*c]z_owned_shm_t, arg_x: [*c]z_moved_shm_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_shm_null(&x.*._this);
}
pub fn z_shm_mut_take(arg_this_: [*c]z_owned_shm_mut_t, arg_x: [*c]z_moved_shm_mut_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_shm_mut_null(&x.*._this);
}
pub fn z_shm_provider_take(arg_this_: [*c]z_owned_shm_provider_t, arg_x: [*c]z_moved_shm_provider_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_shm_provider_null(&x.*._this);
}
pub fn z_slice_take(arg_this_: [*c]z_owned_slice_t, arg_x: [*c]z_moved_slice_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_slice_null(&x.*._this);
}
pub fn z_source_info_take(arg_this_: [*c]z_owned_source_info_t, arg_x: [*c]z_moved_source_info_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_source_info_null(&x.*._this);
}
pub fn z_string_array_take(arg_this_: [*c]z_owned_string_array_t, arg_x: [*c]z_moved_string_array_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_string_array_null(&x.*._this);
}
pub fn z_string_take(arg_this_: [*c]z_owned_string_t, arg_x: [*c]z_moved_string_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_string_null(&x.*._this);
}
pub fn z_subscriber_take(arg_this_: [*c]z_owned_subscriber_t, arg_x: [*c]z_moved_subscriber_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_subscriber_null(&x.*._this);
}
pub fn z_task_take(arg_this_: [*c]z_owned_task_t, arg_x: [*c]z_moved_task_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    z_internal_task_null(&x.*._this);
}
pub fn zc_closure_log_take(arg_closure_: [*c]zc_owned_closure_log_t, arg_x: [*c]zc_moved_closure_log_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    zc_internal_closure_log_null(&x.*._this);
}
pub fn zc_concurrent_close_handle_take(arg_this_: [*c]zc_owned_concurrent_close_handle_t, arg_x: [*c]zc_moved_concurrent_close_handle_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    zc_internal_concurrent_close_handle_null(&x.*._this);
}
pub fn zc_shm_client_list_take(arg_this_: [*c]zc_owned_shm_client_list_t, arg_x: [*c]zc_moved_shm_client_list_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    zc_internal_shm_client_list_null(&x.*._this);
}
pub fn ze_advanced_publisher_take(arg_this_: [*c]ze_owned_advanced_publisher_t, arg_x: [*c]ze_moved_advanced_publisher_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_advanced_publisher_null(&x.*._this);
}
pub fn ze_advanced_subscriber_take(arg_this_: [*c]ze_owned_advanced_subscriber_t, arg_x: [*c]ze_moved_advanced_subscriber_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_advanced_subscriber_null(&x.*._this);
}
pub fn ze_closure_miss_take(arg_closure_: [*c]ze_owned_closure_miss_t, arg_x: [*c]ze_moved_closure_miss_t) callconv(.c) void {
    var closure_ = arg_closure_;
    _ = &closure_;
    var x = arg_x;
    _ = &x;
    closure_.* = x.*._this;
    ze_internal_closure_miss_null(&x.*._this);
}
pub fn ze_publication_cache_take(arg_this_: [*c]ze_owned_publication_cache_t, arg_x: [*c]ze_moved_publication_cache_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_publication_cache_null(&x.*._this);
}
pub fn ze_querying_subscriber_take(arg_this_: [*c]ze_owned_querying_subscriber_t, arg_x: [*c]ze_moved_querying_subscriber_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_querying_subscriber_null(&x.*._this);
}
pub fn ze_sample_miss_listener_take(arg_this_: [*c]ze_owned_sample_miss_listener_t, arg_x: [*c]ze_moved_sample_miss_listener_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_sample_miss_listener_null(&x.*._this);
}
pub fn ze_serializer_take(arg_this_: [*c]ze_owned_serializer_t, arg_x: [*c]ze_moved_serializer_t) callconv(.c) void {
    var this_ = arg_this_;
    _ = &this_;
    var x = arg_x;
    _ = &x;
    this_.* = x.*._this;
    ze_internal_serializer_null(&x.*._this);
}
pub const z_closure_drop_callback_t = ?*const fn (?*anyopaque) callconv(.c) void;
pub const z_closure_hello_callback_t = ?*const fn ([*c]z_loaned_hello_t, ?*anyopaque) callconv(.c) void;
pub const z_closure_matching_status_callback_t = ?*const fn ([*c]const z_matching_status_t, ?*anyopaque) callconv(.c) void;
pub const z_closure_query_callback_t = ?*const fn ([*c]z_loaned_query_t, ?*anyopaque) callconv(.c) void;
pub const z_closure_reply_callback_t = ?*const fn ([*c]z_loaned_reply_t, ?*anyopaque) callconv(.c) void;
pub const z_closure_sample_callback_t = ?*const fn ([*c]z_loaned_sample_t, ?*anyopaque) callconv(.c) void;
pub const z_closure_zid_callback_t = ?*const fn ([*c]const z_id_t, ?*anyopaque) callconv(.c) void;
pub const zc_closure_log_callback_t = ?*const fn (zc_log_severity_t, [*c]const z_loaned_string_t, ?*anyopaque) callconv(.c) void;
pub const ze_closure_miss_callback_t = ?*const fn ([*c]const ze_miss_t, ?*anyopaque) callconv(.c) void;
pub fn z_malloc(arg_size: usize) callconv(.c) ?*anyopaque {
    var size = arg_size;
    _ = &size;
    return malloc(size);
}
pub fn z_realloc(arg_ptr: ?*anyopaque, arg_size: usize) callconv(.c) ?*anyopaque {
    var ptr = arg_ptr;
    _ = &ptr;
    var size = arg_size;
    _ = &size;
    return realloc(ptr, size);
}
pub fn z_free(arg_ptr: ?*anyopaque) callconv(.c) void {
    var ptr = arg_ptr;
    _ = &ptr;
    free(ptr);
}
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);

pub const ZENOH_C = "1.2.1";
pub const ZENOH_C_MAJOR = @as(c_int, 1);
pub const ZENOH_C_MINOR = @as(c_int, 2);
pub const ZENOH_C_PATCH = @as(c_int, 1);
pub const ZENOH_C_TWEAK = "";
pub const TARGET_ARCH_X86_64 = "";
pub const Z_FEATURE_TRANSPORT_COMPRESSION = "";
pub const Z_FEATURE_TRANSPORT_TCP = "";
pub const Z_FEATURE_TRANSPORT_MULTILINK = "";
pub const Z_FEATURE_TRANSPORT_UDP = "";
pub const Z_FEATURE_TRANSPORT_QUIC = "";
pub const Z_FEATURE_AUTH_USRPWD = "";
pub const Z_FEATURE_AUTH_PUBKEY = "";
pub const Z_FEATURE_TRANSPORT_TLS = "";
pub const Z_FEATURE_UNSTABLE_API = "";
pub const Z_FEATURE_TRANSPORT_WS = "";
pub const Z_FEATURE_SHARED_MEMORY = "";
pub const Z_FEATURE_TRANSPORT_UNIXSOCK_STREAM = "";
pub const ZENOHC_API = "";

pub const DEFAULT_SCOUTING_TIMEOUT = @as(c_int, 1000);
pub const Z_CHANNEL_DISCONNECTED = @as(c_int, 1);
pub const Z_CHANNEL_NODATA = @as(c_int, 2);
pub const Z_OK = @as(c_int, 0);
pub const Z_EINVAL = -@as(c_int, 1);
pub const Z_EPARSE = -@as(c_int, 2);
pub const Z_EIO = -@as(c_int, 3);
pub const Z_ENETWORK = -@as(c_int, 4);
pub const Z_ENULL = -@as(c_int, 5);
pub const Z_EUNAVAILABLE = -@as(c_int, 6);
pub const Z_EDESERIALIZE = -@as(c_int, 7);
pub const Z_ESESSION_CLOSED = -@as(c_int, 8);
pub const Z_EUTF8 = -@as(c_int, 9);
pub const Z_EBUSY_MUTEX = -@as(c_int, 16);
pub const Z_EINVAL_MUTEX = -@as(c_int, 22);
pub const Z_EAGAIN_MUTEX = -@as(c_int, 11);
pub const Z_EPOISON_MUTEX = -@as(c_int, 22);
pub const Z_EGENERIC = INT8_MIN;
pub const Z_CONGESTION_CONTROL_DEFAULT = Z_CONGESTION_CONTROL_BLOCK;
pub const Z_CONSOLIDATION_MODE_DEFAULT = Z_CONSOLIDATION_MODE_AUTO;
pub const Z_PRIORITY_DEFAULT = Z_PRIORITY_DATA;
pub const Z_QUERY_TARGET_DEFAULT = Z_QUERY_TARGET_BEST_MATCHING;
pub const Z_RELIABILITY_DEFAULT = Z_RELIABILITY_RELIABLE;
pub const Z_SAMPLE_KIND_DEFAULT = Z_SAMPLE_KIND_PUT;
