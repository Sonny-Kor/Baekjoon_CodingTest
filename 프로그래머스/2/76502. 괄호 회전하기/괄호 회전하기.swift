import Foundation


func solution(_ s:String) -> Int {
    var result = 0
    
    for i in 0..<s.count{
        var array = s.map{ $0 }
        
        var stack : [Character] = []
        var isCorrect : Bool = true
        for j in 0..<s.count{
            var index = (i + j) % (s.count)
            var ch = array[index]
            if ["{","(","["].contains(ch) {
                stack.append(ch)
            }else{
                if stack.count == 0 {
                    isCorrect = false
                    break
                }
                if stack.last! == "{" && ch == "}"{
                    stack.popLast()
                }else if stack.last! == "(" && ch == ")"{
                    stack.popLast()
                }else if stack.last! == "[" && ch == "]"{
                    stack.popLast()
                }else{
                    isCorrect = false
                    break
                }
            }
        }
        result += isCorrect && stack.isEmpty ? 1 : 0
    }
    
    
    
    return result
}