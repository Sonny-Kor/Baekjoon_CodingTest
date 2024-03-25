
//var data = [["science", "12:40", "50"], ["music", "12:20", "40"], ["history", "14:00", "30"], ["computer", "12:30", "100"]]
//var data = [["aaa", "12:00", "20"], ["bbb", "12:10", "30"], ["ccc", "12:40", "10"]]
//var data = [["korean", "11:40", "30"], ["english", "12:10", "20"], ["math", "12:30", "40"]]
//var data = [["a","09:00","30"],["b","09:10","20"],["c","09:15","20"],["d","09:55","10"],["e","10:50","5"]]
func solution(_ plans:[[String]]) -> [String] {
    var PlanArray : [(String, Int, Int)] = []
    for v in plans{
        let temp : [String] = v[1].split(separator: ":").map{ String($0) }
        let a : String = v[0]
        let b : Int = Int(temp[0])! * 60 + Int(temp[1])!
        let c : Int = Int(v[2])!
        PlanArray.append((a,b,c))
    }
    PlanArray.sort { $0.1 < $1.1 }
    /*
     [("music", 740, 40), ("computer", 750, 100), ("science", 760, 50), ("history", 840, 30)]
     */
    print(PlanArray)
    var result : [String] = []
    var stack : [(String, Int, Int)] = []
    var idx = 0
    for time in (PlanArray.first!.1)..<PlanArray.last!.1 + PlanArray.last!.2 {
        
        if !stack.isEmpty {
            var element = stack.popLast()!
            element.2 -= 1
            stack.append(element)
            if element.2 == 0 {
                result.append(stack.popLast()!.0)
            }
        }
        
        
        if idx != PlanArray.count , time == PlanArray[idx].1{
            stack.append(PlanArray[idx])
            idx += 1
        }
        
    }
    while(!stack.isEmpty){
        result.append(stack.popLast()!.0)
    }
    
    
    return result
}