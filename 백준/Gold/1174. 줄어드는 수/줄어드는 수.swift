
var N : Int = Int(readLine()!)!
var descArr : [Int] = [1,2,3,4,5,6,7,8,9]
func solve () -> Int {
    if N <= 10 {
        return (N - 1)
    }
    var cnt = 10
    while(!descArr.isEmpty){
        
        let current = descArr.removeFirst()
        let lastNum = current % 10
        for i in 0..<lastNum{
            
            descArr.append(current * 10 + i)
            cnt += 1
            if cnt == N {
                return current * 10 + i
            }
        }
    }
    
    return -1
}
print(solve())