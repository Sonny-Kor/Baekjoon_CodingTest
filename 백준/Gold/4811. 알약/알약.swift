
var arr = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)

for j in 1..<31 {
    arr[0][j] = 1
}

for i in 1..<31 {
    for j in i..<31 {
        arr[i][j] += arr[i-1][j] + arr[i][j-1]
    }
}

while true {
    guard let input = readLine(), let n = Int(input) else {
        break
    }
    if n == 0 {
        break
    }
    print(arr[n][n])
}

