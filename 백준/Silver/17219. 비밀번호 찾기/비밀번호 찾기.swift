let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]

var dict : [String:String] = [:]

for _ in 0..<N{
    let password = readLine()!.split(separator: " ").map { String($0) }
    dict[password[0]] = password[1]
}

for _ in 0..<M{
    let site = readLine()!
    print(dict[site]!)
}
