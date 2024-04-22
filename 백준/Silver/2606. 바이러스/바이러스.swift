let N = Int(readLine()!)!
let M = Int(readLine()!)!

var array : [[Int]] = Array(repeating: [], count: N+1)
var visited : [Bool] = Array(repeating: false, count: N+1)

for _ in 0..<M{
    let input : [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    array[a].append(b)
    array[b].append(a)
}

func dfs(n : Int){
    visited[n] = true
    for i in array[n]{
        if visited[i] != true {
            dfs(n: i)
        }
    }
    
}

dfs(n: 1)
print(visited.filter{ $0 == true }.count - 1)
