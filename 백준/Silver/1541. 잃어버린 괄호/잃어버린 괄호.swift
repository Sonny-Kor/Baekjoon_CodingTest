var input = readLine()!.map{$0}

var temp = false
for (i,v) in input.enumerated(){
    if v == "-" {
        temp = true
        continue
    }
    if v == "+" && temp {
        input[i] = "-"
    }
    
}
//print(input)


var result = 0
var arr = String(input).split(separator: "+")

for i in arr{
    
    var temp2 = i.split(separator: "-")
    for (j,v) in temp2.enumerated(){
        if j == 0 {
            result += Int(v) ?? 0
            continue
        }
        result -= Int(v) ?? 0
        
    }
    
}
//print(arr)
print(result)
