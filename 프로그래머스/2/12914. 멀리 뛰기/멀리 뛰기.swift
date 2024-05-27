
func solution(_ n:Int) -> Int {
    var dp : [Int] = Array(repeating: 0, count: 2001)
    dp[0] = 1
    dp[1] = 2
    if n > 1{
        for i in 2..<n{
            dp[i] = (dp[i-2] + dp[i-1]) % 1234567
        }
    }
    return dp[n-1]
}
