let scores = [3,51,3,100]

var totalScore = 0

for score in scores {
    if score > 50 {
        totalScore  += 2
    } else {
        totalScore -= 1
    }
}

print(totalScore)


// lets say you want to check if a value is missing

// we can combine IF STATEMENTS and LETs 

var optionalString: String? = "Hello" // because of the ?, this can be a string, or nil
print(optionalString == nil)
print(optionalString is Int) // type casting

var placeholderName: String? = "John" // if this is nil, then greeting is only Hello
var greeting = "Hello"

if let name = placeholderName {
    greeting = "Hello, \(name)"
}

print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

print(informalGreeting)