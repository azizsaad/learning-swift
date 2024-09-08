func addNums(a: Int, b: Int) -> (Int, String) {
    return (a + b, "original inputs were \(a) and \(b)")
}

var result = addNums(a: 4, b: 5)

print(result)

func arrayMinAndMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil}

    var currentMin = array[0]
    var currentMax = array[0]

    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }


    return (currentMin, currentMax)
}

var res = arrayMinAndMax(array: [10,40,2,-20,100])

print(res)