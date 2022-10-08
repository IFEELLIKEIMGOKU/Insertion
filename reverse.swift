var words = [String]()
while let line = readLine() {
    words.append(line)
}

var upper = words.count-1
var lower = 0

for _ in 0...words.count/2 {
    if lower < upper {
        words.swapAt(lower, upper)
        lower += 1
        upper -= 1
    }
}
for i in 0...words.count-1 {
    print(words[i])
}
