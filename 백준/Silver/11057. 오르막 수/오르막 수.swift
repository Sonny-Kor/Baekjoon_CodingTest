

var N = Int(readLine()!)!
var arr : [[Int]] = Array(repeating: Array(repeating: 1, count: 10), count: N)


for i in 1..<N{
    for j in 0..<9{
        
        var temp = 0
        for k in 9-j-1..<10{
            temp += arr[i-1][k] % 10007
        }
        arr[i][9-j-1] = temp
    }
}

var res = 0
for i in 0..<10{
    res += arr[N-1][i] % 10007
}
print(res%10007)
