

var N = Int(readLine()!)!
var arr : [Int] = (readLine()!.split(separator: " ").map{ Int($0)! })

arr.sort(by: <)

var result : [Int] = []
for i in 0..<arr.count{
    var temp = 0
    for j in 0..<i+1{
        temp += arr[j]
    }
    result.append(temp)
}
print(result.reduce(0, +))
