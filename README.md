## Key commands

- `swift build`: compiles the Swift package and its deps. The outputted binary is in the `.build` dir

- `swift run`: (1) compiled the code (2) executes it. This command is executed in the same dir as Package.swift (we define the executable in the Package file, therefore, the program knows which code to run)

- `swift <FILE-NAME.swift>`: compile and run an individual swift file
    - For example, if you have dependencies in `Package.swift`, you need to use `swift run` since you need to first compile the deps from the Package in order for the swift file to use them!