// Mississipi

var input = readLine()!.map { ch in
    return ch
}

var dict : [Character: Int] = [:]
for ch in input{
    var lowCh : Character = Character(ch.lowercased())
    dict[lowCh] = (dict[lowCh] ?? 0 ) + 1
}


var maxValue = dict.values.max()!
var resultCh : Character = "?"
var count =  0
for (key, value) in dict {
    if value == maxValue {
        resultCh = key
        count += 1
        if count == 2 {
            print("?")
            break
        }
    }
}

if count == 1{
    print(resultCh.uppercased())
}
