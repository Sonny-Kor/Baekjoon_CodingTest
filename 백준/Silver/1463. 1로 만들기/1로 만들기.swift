var input : Int = Int(readLine()!)!
var array : [Int] = Array(repeating: 0, count: input+1)

for i in 2..<input+1{
    array[i] = array[i-1] + 1
    if i % 3 == 0{
        array[i] = min(array[i],array[i/3]+1)
    }
    if i % 2 == 0{
        array[i] = min(array[i],array[i/2]+1)
    }
}

print(array[input])
