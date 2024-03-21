/*
 
 3
 3
 ENTJ INTP ESFJ
 4
 ESFP ESFP ESFP ESFP
 5
 INFP INFP ESTP ESTJ ISTJ
 
 */

let T = Int(readLine()!)!

func calScore(mbti1: [Character], mbti2: [Character], mbti3: [Character]) -> Int {
    var score : Int = 0
    for i in 0..<4 {
        if mbti1[i] != mbti2[i]  {
            score += 1
        }
        if mbti1[i] != mbti3[i] {
            score += 1
        }
        if mbti2[i] != mbti3[i] {
            score += 1
        }
    }
    
    return score
}

for _ in 0..<T{
    
    var result : Int = 9999999
    let N = Int(readLine()!)!
    var MBTI : [String] = readLine()!.split(separator: " ").map{ String($0) }
    var charMBTI: [[Character]] = MBTI.map { mbti in
        return Array(mbti)
    }
    if N > 32 {
        print(0)
        continue
    }else{
        for i in 0..<N{
            for j in 0..<N{
                for k in 0..<N{
                    if i == j  || i == k || j == k  {
                        continue
                    }
                    result = min(calScore(mbti1: charMBTI[i], mbti2: charMBTI[j], mbti3: charMBTI[k]), result)
                    
                }
            }
        }
        print(result)
    }
}


