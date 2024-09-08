# Data types

| Type     | example |
| -------- | ------- |
| String  | `"hello"`    |
| Int | `10`     |
| Float (32 bit)  | `10.3`    |
| Double (64 bit)    | `10.3348`    |
| Array    | `[]`    |
| Dictionary    | `["key": "value", "key2": "value2"]`    |
| Set    | `["unique1", "unique2]`    |

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
