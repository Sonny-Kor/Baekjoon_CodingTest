import Foundation

//5
//abcde

let asciiIntValue_A = Int(UnicodeScalar("a").value)

var IntArray : [Int] = []
var result = 0
var N = Int(readLine()!)!
var input : [Character] = []
input = readLine()!.map { $0 }
for (i, value) in input.enumerated(){
    var r = Int(UnicodeScalar(String(value))!.value)-asciiIntValue_A
    result += (r+1) * Int(pow(Double(31),Double(i)))
}
print(result)

