let NM = readLine()!.split(separator: " ").map { Int($0)! }
var m1 = [String : Int]()
var m2 = [Int : String]()

for i in 0..<NM[0] {
    let pokemon = readLine()!
    m1[pokemon] = i + 1
    m2[i + 1] = pokemon
}

for _ in 0..<NM[1] {
    let who = readLine()!
    
    if let int = Int(who) {
        print(m2[int]!)
    } else {
        print(m1[who]!)
    }
}
