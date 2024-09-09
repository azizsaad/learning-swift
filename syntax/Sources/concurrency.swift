func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

// Task {
//     let userID = await fetchUserID(from: "primary")
//     print(userID)
// }

// print("now")

// Task lets us run async code in synchronous code, without having to wait for the result of the async code -> now prints before userId

let userIDs = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development"] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }


    var results: [Int] = []
    for await result in group {
        results.append(result)
    }
    print(results)
    return results
}