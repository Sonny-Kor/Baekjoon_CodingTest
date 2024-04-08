
var N = Int(readLine()!)!

var dict : [(Int,Int)] = []
for _ in 0..<N{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    dict.append((input[0], input[1]))
}
dict = dict.sorted { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }
for x in 0..<N {
    print("\(dict[x].0) \(dict[x].1)")
}
