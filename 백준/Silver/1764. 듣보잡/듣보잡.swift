let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var dict : [String: Int] = [:]

for _ in 0..<N{
    let name = readLine()!
    dict[name] = (dict[name] ?? 0) + 1
}


for _ in 0..<M{
    let name = readLine()!
    dict[name] = (dict[name] ?? 0) + 1
}

var result: [String] = []
for (i,v) in dict{
    if v == 2 {
        result.append(i)
    }
}

print(result.count)
result.sort(by: <)
for i in result{
    print(i)
}
