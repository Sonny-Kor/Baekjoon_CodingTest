import Foundation

func solution() {
    let n = Int(readLine()!)!
    if n == 0 {
        print(0)
        return
    }
    var scores: [Int] = []
    for _ in 0..<n { scores.append(Int(readLine()!)!) }
    
    scores.sort()
    
    let exceptCount = Int((Double(n) * 0.15).rounded())
    
    scores.removeFirst(exceptCount)
    scores.removeLast(exceptCount)
    
    let average = Int((Double(scores.reduce(0, +)) / Double(scores.count)).rounded())
    print(average)
}

solution()
