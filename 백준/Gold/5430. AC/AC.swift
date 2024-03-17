import Foundation

let testCase : Int = Int(readLine()!)!

for _ in 0..<testCase{
    let funcArr : [Character] = readLine()!.map { $0 }
    let lengthArr : Int = Int(readLine()!)!
    var flag : Bool = false
    var str : String = readLine()!
    let rangeStartIndex = str.index(after: str.startIndex)
    let rangeEndIndex = str.index(str.endIndex, offsetBy: -2)
    var str1 : String = ""
    if (rangeStartIndex <= rangeEndIndex){
        str1 = String(str[rangeStartIndex...rangeEndIndex])
    }
    var arr = str1.split(separator: ",").map{String($0)}
    var startIndex : Int = 0
    var endIndex : Int = arr.count - 1

    for ch in funcArr{
        if ch == "D"{
            if flag{
                endIndex = endIndex - 1
            }else{
                startIndex = startIndex + 1
            }
        }
        else{
            flag = !flag
        }
        
    }
    if startIndex-1  == endIndex {
        print("[]")
    }else if startIndex > endIndex{
        print("error")
    }
    else{
        if flag{
            var revArr = arr[startIndex...endIndex]
            revArr.reverse()
            print("[\(revArr.joined(separator: ","))]")
        }else{
            print("[\( arr[startIndex...endIndex].joined(separator: ","))]")
        }
    }
}
