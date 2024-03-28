let N: Int = Int(readLine()!)!
let M: Int = Int(readLine()!)!
var S: String = readLine()!

var flagI : Bool = false // 지금 맨 위에가 I ?
var flagO : Bool = false // 지금 맨 위에가 O ?
var arr : [Character] = []
var result = 0
var cnt = 0
for _ in 0..<M{
    
    var ch = S.removeFirst()
    
    if arr.count == 0 {
        if ch == "I"{
            flagI = true
        }
        else if ch == "O"{
            flagO = true
        }
        arr.append(ch)
        continue
    }
    
    else {
        if flagI == true && ch == "O"{
            flagI = false
            flagO = true
            arr.append(ch)
            cnt += 1
        }
        else if flagO == true && ch == "I"{
            flagI = true
            flagO = false
            if cnt == N {
                result += 1
                arr.removeFirst()
                arr.removeFirst()
                cnt -= 1
            }
            arr.append(ch)
        }
        else {
            arr.removeAll()
            cnt = 0
            if ch == "I"{
                flagI = true
            }
            else if ch == "O"{
                flagO = true
            }
            arr.append(ch)
        }
    }
    
}

print(result)

