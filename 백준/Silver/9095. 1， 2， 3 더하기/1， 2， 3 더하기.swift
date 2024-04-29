var array : [Int] = Array(repeating: 0, count: 10)
array[0] = 1
array[1] = 2
array[2] = 4
for i in 3..<10{
    array[i] = array[i-3] + array[i-2] + array[i-1]
}


let N = Int(readLine()!)!

for _ in 0..<N{
    let n = Int(readLine()!)!
    print(array[n-1])
}
