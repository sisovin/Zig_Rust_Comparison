fn main() {
    let mut buffer = Vec::with_capacity(10); // Dynamic allocation
    buffer.push(1);                          // Automatically managed
    println!("Buffer: {:?}", buffer);
} // Memory is freed automatically when `buffer` goes out of scope
