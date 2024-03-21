import Foundation

let N: Int = Int(readLine()!)!

for _ in 0..<N {
    var need1: [[Character: Int]] = []
    var need2: [Character:Int] = [:]
    var inputWord: [Character] = readLine()!.map { $0 }
    inputWord.sort()
    for i in inputWord{
        need2[i] = (need2[i] ?? 0) + 1
    }
    for (key, value) in need2 {
        need1.append( [key:value] )
    }
    need1.sort { first, second in
        let firstKey = first.keys.first!
       let secondKey = second.keys.first!
       return firstKey < secondKey
    }
    
    
    
    var temp: [Character] = []
    backTracking(makingWord: &temp)
    
    func backTracking(makingWord: inout [Character]) {
        if makingWord.count == inputWord.count {
            let word = String(makingWord)
            print(word)
            return
        } else {
            for (idx,dict) in need1.enumerated() {
                
                for (key, value) in dict {
                    if value != 0 {
                        need1[idx][key] = need1[idx][key]! - 1
                        makingWord.append(key)
                        backTracking(makingWord: &makingWord)
                        makingWord.removeLast()
                        need1[idx][key] = need1[idx][key]! + 1
                    }
                }
            }
            
        }
    }
}
