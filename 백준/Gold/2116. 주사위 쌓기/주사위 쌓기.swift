
var N = Int(readLine()!)! // 주사위 개수

var arr : [[Int]] = []
for i in 0..<N{
    var M = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(M)
}
/*
 5
 2 3 1 6 5 4
 3 1 2 4 6 5
 5 6 4 1 3 2
 1 3 6 2 4 5
 4 1 6 5 2 3
 */

func solution(bottom: Int, dice: [Int]) -> (Int, Int)? {
    guard let idx = dice.firstIndex(of: bottom) else {
        return nil
    }
    // A->F idx 0 ->> 5
    // B->D idx 1 ->> 3
    // C->E idx 2 ->> 4
    let compareIndex = [5, 3, 4, 1, 2, 0]
    
    let top = dice[compareIndex[idx]]
    var maxSide = 0
    for i in 0..<dice.count {
        if i != idx && i != compareIndex[idx] {
            maxSide = max(maxSide, dice[i])
        }
    }

    return (top, maxSide)
}
var result = 0
for k in 0..<6{
    
    guard let first = solution(bottom: arr[0][k], dice: arr[0]) else { break }
    var top = first.0
    var total = first.1
    
    for j in 1..<N{
        guard let next = solution(bottom: top, dice: arr[j]) else { break }
        top = next.0
        total += next.1
    }
    result = max(total,result)
}
print(result)
