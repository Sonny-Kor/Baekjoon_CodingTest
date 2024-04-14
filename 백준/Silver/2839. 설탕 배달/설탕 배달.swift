var N = Int(readLine()!)!

var result = 0
var case1 = Int.max
var case2 = Int.max
var case3 = 0

if N % 5 == 0{
    case1 = N / 5
}
if N % 3 == 0{
    case2 = N / 3
}

while(N > 0){
    N -= 3
    case3 += 1
    if N % 5 == 0{
        N /= 5
        case3 += N
        break
    }
}
if N < 0 {
    case3 = Int.max
}


result = min(case1,case2,case3)

if result == Int.max {
    print(-1)
}else{
    print(result)
}
