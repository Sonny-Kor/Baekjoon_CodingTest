var N = Int(readLine()!)!
var stack : [Int] = []
var result : [Character] = []
var flag = true
var num = 1
for i in 0..<N{
    var input = Int(readLine()!)!
    while(input >= num){
        stack.append(num)
        result.append("+")
        num += 1
    }
    if stack.last == input {
        stack.popLast()
        result.append("-")
    }else{
        flag = false
    }
}


if !flag {
    print("NO")
}else{
    for i in result{
        print(i)
    }
}
