


while(true){
    var string1 = readLine()!
    var string2 = String(string1.reversed())
    if string1.first == "0"{
        break
    }
    if string1 == string2 {
        print("yes")
    }else{
        print("no")
    }
}
