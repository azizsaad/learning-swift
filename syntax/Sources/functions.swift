func addNums(a: Int, b: Int) -> (Int, String) {
    return (a + b, "original inputs were \(a) and \(b)")
}

var result = addNums(a: 4, b:5)

print(result)