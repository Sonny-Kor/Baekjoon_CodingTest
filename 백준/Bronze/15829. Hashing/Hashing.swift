let M = 1234567891
let l = Int(readLine()!)!
let array = readLine()!.map { Int($0.asciiValue!) - 96 }

var answer = 0

func pow31(_ r: Int) -> Int {
    var answer = 1
    for _ in 0..<r {
        answer *= 31
        answer %= M
    }
    return answer % M
}

for i in 0..<l {
    answer += array[i] * pow31(i)
    answer %= M
}
print(answer % M)
