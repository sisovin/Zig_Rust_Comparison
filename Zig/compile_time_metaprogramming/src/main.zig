const std = @import("std");

pub fn main() void {
    const x = compileTimeCalculate(3);
    std.debug.print("Compile-time result: {}\n", .{x});
}

fn compileTimeCalculate(n: i32) i32 {
    return n * n; // This runs at compile time
}
