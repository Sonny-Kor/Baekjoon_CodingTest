
let N = Int(readLine()!)!
var tree : [Int:[Int]] = [:]
for i in 1...N{
    tree[i] = []
}

for i in 1..<N{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    tree[input[0]]!.append(input[1])
    tree[input[1]]!.append(input[0])
}
//print(tree)
var result : [Int] = Array(repeating: 0, count: N+1)
func dfs(_ n : Int){
    for i in tree[n]!{
        if result[i] == 0 {
            result[i] = n
            dfs(i)
        }
    }
    
}

dfs(1)
for i in 2..<result.count{
    print(result[i])
}
