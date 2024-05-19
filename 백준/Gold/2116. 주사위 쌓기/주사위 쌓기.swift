

var N = Int(readLine()!)! // 주사위 개수

var arr : [[Int]] = []
for i in 0..<N{
    var M = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(M)
}

func solution (bottom: Int, dice: [Int]) -> (Int, Int)? {
    var idx = dice.firstIndex { $0 == bottom }
    if idx == 0{ // A
        return (dice[5], max(dice[1],dice[2],dice[3],dice[4]))
    }else if idx == 1{ // B
        return (dice[3], max(dice[0], dice[2], dice[4],dice[5]))
    }else if idx == 2{ // C
        return (dice[4], max(dice[0], dice[1], dice[3],dice[5]))
    }else if idx == 3{ // D
        return (dice[1], max(dice[0], dice[2], dice[4],dice[5]))
    }else if idx == 4{ // E
        return (dice[2], max(dice[0], dice[1], dice[3],dice[5]))
    }else if idx == 5{ // F
        return (dice[0], max(dice[1], dice[2], dice[3],dice[4]))
    }
    return nil
}
var result = 0
for k in 0..<6{
    
    guard let temp = solution(bottom: arr[0][k], dice: arr[0]) else { break }
    var top = temp.0
    var total = temp.1
    
    for j in 1..<N{
        guard let next = solution(bottom: top, dice: arr[j]) else { break }
        top = next.0
        total += next.1
    }
    result = max(total,result)
}
print(result)
