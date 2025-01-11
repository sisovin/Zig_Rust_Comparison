const fn compile_time_calculate(n: i32) -> i32 {
    n * n
}

fn main() {
    const X: i32 = compile_time_calculate(3);
    println!("Compile-time result: {}", X);
}
