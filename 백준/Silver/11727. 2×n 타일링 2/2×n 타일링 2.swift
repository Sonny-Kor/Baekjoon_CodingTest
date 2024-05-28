
var n = Int(readLine()!)!

var arr : [Int] = Array(repeating: 0, count: 1001)
arr[1] = 1
arr[2] = 3

if n > 2 {
    for i in 3...n{
        arr[i] = (arr[i-1] + (2 * arr[i-2])) % 10007
    }

}

print(arr[n])

  
