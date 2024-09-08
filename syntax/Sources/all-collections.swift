#!/usr/bin/env swift

func main() {
    var sport = ["footy", "rugby", "cricket"]
    sport[0] = "pop"
    sport.append("rugby")

    print(sport)

    // --------------- ARRAY ----- END

    var captains: [String: String] = [
        "stokes": "cricket",
        "kane": "football"
    ]
    captains["homes"] = "rugby"

    print(captains["homes"]!) // without asserting that the 'homes' key exists, we get a warning saying the key might not exist

    // print(captains["homes"] ?? <#default value#>) // this defaults to a value we need to enter (in place of value)

    print(captains["homes"] as Any) // this casts the result to Any which just hides the warning

    if let homesCaptain = captains["homes"] {
        print(homesCaptain)
    } else {
        print("No captain found for homes")
    }

    if let homesCaptain = captains["eminem"] {
        print(homesCaptain)
    } else {
        print("No captain found for eminem")
    }

    // --------------- DICTIONARIES END


    let drinks: Set = ["coffee", "tea"]

    print(drinks.contains("tea"))

    // --------------- SET END
}

main()