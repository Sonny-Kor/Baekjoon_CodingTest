
let input = Int(readLine()!)!
 
let straw : [Int] = [64,32,16,8,4,2,1]
var result = 0
var X = input

for i in straw{
    if i > X{
        continue
    }else{
        X -= i
        result += 1
    }
    if input == 0 {
        break;
    }
}

print(result)
