fn main() {
    println!("Hello, world!");
}

#[cfg(test)]
mod tests {

    #[test]
    fn it_works() {
        assert_eq!(4, 4);
    }
    
    #[test]
    fn it_doesnt_work() {
        assert_eq!(4, 10);
    }
}