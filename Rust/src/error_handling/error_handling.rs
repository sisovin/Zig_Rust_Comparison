fn main() {
    match do_something() {
        Ok(result) => println!("Success: {}", result),
        Err(e) => println!("Error: {}", e),
    }
}

fn do_something() -> Result<i32, String> {
    Err("Some error".to_string())
}
