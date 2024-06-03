
var str1 = readLine()!.map{ return String($0) }
var str2 = readLine()!.map{ return String($0) }

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: str1.count+1), count: str2.count+1)

for i in 1...str2.count{
    for j in 1...str1.count{
        if str1[j-1] == str2[i-1] {
            dp[i][j] = dp[i-1][j-1] + 1
        }else {
            dp[i][j] = max(dp[i-1][j], dp[i][j-1])
        }
    }
}

print(dp[str2.count][str1.count])
