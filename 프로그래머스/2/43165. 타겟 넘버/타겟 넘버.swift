import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    if numbers.count == 0 && target == 0{
        return 1
    }
    var result = 0
    while(!numbers.isEmpty){
        var myNumbers = numbers
        var myTarget = target
        
        
        guard let temp = myNumbers.popLast() else { return 0 }        
        return solution(myNumbers, myTarget - temp) + solution(myNumbers, myTarget + temp)
        
    }
    
    
    return 0
}