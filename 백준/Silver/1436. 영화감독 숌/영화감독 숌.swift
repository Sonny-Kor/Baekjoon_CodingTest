let input = Int(readLine()!)!
var result = 666
var N = 0
while(true){
    var temp = 0
    for i in String(result){
        if i == "6"{
            temp += 1
            if temp == 3{
                N += 1
                break
            }
        }else{
            temp = 0
        }
        
        
    }
    if N == input {
        print(result)
        break
    }
    
    result += 1
    
}
