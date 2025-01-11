const std = @import("std");

pub fn main() !void {
    const t1 = try std.Thread.spawn(.{}, worker, .{1});
    const t2 = try std.Thread.spawn(.{}, worker, .{2});

    t1.join();
    t2.join();
}

fn worker(thread_id: u32) void {
    std.debug.print("Running in thread {}!\n", .{thread_id});
}