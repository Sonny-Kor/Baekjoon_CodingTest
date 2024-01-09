
let input = Int(readLine()!)!
 
var result = 0
for i in 1...input{
    if i >= 1 && i <= 99 {
        result += 1
        continue
    }
    let digit = String(i).map{Int(String($0))!}
    let diff = digit[1] - digit[0]
    var temp = digit[0]
    var isHansu = true
    for i in 1..<digit.count{
        temp = temp + diff
        if temp != digit[i]{
            isHansu = false
        }
    }
    if isHansu == true {
        result += 1
    }
    
}

print(result)
