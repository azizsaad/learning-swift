class Shape {
    var numberOfSlides: Int = 0
    var name: String = "hello"

    init(name: String) {
        self.name = name
    }

    func description() -> String {
        return "A shape with \(numberOfSlides) sides."
    }
}

var mock = Shape()
mock.numberOfSlides = 4
var desc = mock.description()
print(desc)