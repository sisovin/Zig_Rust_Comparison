const std = @import("std");

pub fn main() !void {
    var allocator = std.heap.page_allocator;
    const buffer = try allocator.alloc(u8, 10); // Manual memory allocation
    defer allocator.free(buffer);               // Explicit free

    std.debug.print("Buffer allocated and freed manually.\n", .{});
}