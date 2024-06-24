import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0], V = input[1]
var things : [(Int,Int)] = [(0,0)]

for _ in 0..<N{
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    things.append((input2[0],input2[1]))
}
things.sort { $0.0 < $1.0 }

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: things.count), count: V+1)

for i in 1..<things.count{
    for j in 1..<V+1{
        if j < things[i].0 {
            dp[j][i] = dp[j][i-1]
        }else {
            dp[j][i] = max(dp[j][i-1], dp[j-things[i].0][i-1]+things[i].1)
        }
    }
}

print(dp[V][N])
