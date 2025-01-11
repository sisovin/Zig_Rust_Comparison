const std = @import("std");

const SomeError = error{SomeError};

pub fn main() !void {
    const result = doSomething() catch |err| {
        std.debug.print("Error: {}\n", .{err});
        return err;
    };
    std.debug.print("Success: {}\n", .{result});
}

fn doSomething() !i32 {
    return SomeError.SomeError;
}