import Foundation

let N = Int(readLine()!)!
for _ in 0..<N {
    let input = readLine()!.split(separator:" ").map { Int($0)! }
    var priority = readLine()!.split(separator: " ").map { Int($0)! }
    
    var m = input[1]
    
    
    var max = priority.max()
    var result = 0
    var index = 0
    while true {
        if priority[index] == max {
            priority[index] = 0
            result += 1
            if index == m { break }
            max = priority.max()
        } else {
            if index == m { m = priority.count }
            priority.append(priority[index])
            priority[index] = 0
        }
        index += 1
    }
    print(result)
}
