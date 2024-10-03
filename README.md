# Swift

## Data types

| Type     | example |
| -------- | ------- |
| Any  | `any`    |
| ?  | `asserts that value might be nil`    |
| nil  | `value does not exist`    |
| String  | `"hello"`    |
| Int | `10`     |
| Float (32 bit)  | `10.3`    |
| Double (64 bit)    | `10.3348`    |
| Collections (array, set, dictionary)    | `data type that holds multiple generic values in 1 variable`    |
| Array    | `[]`    |
| Dictionary    | `["key": "value", "key2": "value2"]`    |
| Set    | `["unique1", "unique2]`    |
| Tuple (items in tuples are fixed positions with fixed types)    | `[item1InPosition0: Int ,item2InPosition1: String]` |
| Void    | `a data type that is no data type` |
| Function    | `() -> <return-data-type>` |

## Operators

- optional nil: `?`
- modulo: `%`
- nil coalescing: `??`
- closed range: `a..b` -> e.g. `for index in 1..5`: this is a for loop over every item number between 1 and 5
- half-open range: `a..<b` -> e.g. `for i in 0..<count`: loops over the range, excluding the final item
  - useful for array where you start at 0 and you loop over the length of the list, so this operator stops you from trying to access the [n+1] item in the array and going over the length of the array
- one-sided range: [2..] -> start loop at index 2

## Closures

- `let addClosure: (Int, Int) -> Int = { $0 + $1 }`: This is a function that simply takes in 2 numbers and returns the sum of both.
  - The closure signature is `{ $0 + $1 }`
  - *In Swift, a single-expression closure implies the return value is the result of the expression, hence why we don't need an explicit ~return~*
  - `$0` and `$1` are shorthand for the 1st and 2nd input parameters of the function
  - It's a function assigned to a variable. We can then pass this as a parameter into another function!


```swift
var numbers = [20, 19, 7, 12]

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    print(result)
    return result
})
```

- In the code above, the closure signature is this:

```swift
{ (number: Int) -> Int in
    let result = 3 * number
    print(result)
    return result
}
```


## Key commands

- `swift build`: compiles the Swift package and its deps. The outputted binary is in the `.build` dir

- `swift run`: (1) compiled the code (2) executes it. This command is executed in the same dir as Package.swift (we define the executable in the Package file, therefore, the program knows which code to run)

- `swift <FILE-NAME.swift>`: compile and run an individual swift file
  - For example, if you have dependencies in `Package.swift`, you need to use `swift run` since you need to first compile the deps from the Package in order for the swift file to use them!

## IDE issues

`Expressions are not allowed at the top levelsourcekitd` - in swift, top-level code is not allowed in source files - except the `main.swift`.

*What is top-level code?*

- Code/imperative statements that are not nested in any function of class. Basically anything that starts at indentation level 0.

In a playground environment, all code is the main.swift file. But in an IDE like VSCode, there has to be a single, top-level executable where all statements trace back to.

This error is not present in Xcode because it has in-built support to run top-level code wherever. Xcode is aware of the context of all the files within it's package. It knows if a file is running in isolation or not.

