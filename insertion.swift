var words = [String]()
while let line = readLine() {
    words.append(line)
}
func insertSort(_ array: [String]) {
    var sortedArray = array
    var pass = 0
    var swaps = 0
    var totalSwaps = 0
    print("Pass: 0, Swaps: 0/0, Array: \(array)")
    if array.count > 1 {
        for i in 1...(array.count-1) {
            for n in 0...(i-1) {
                if sortedArray[i-n] < sortedArray[i-n-1] {
                    sortedArray.swapAt((i-n), (i-n-1))
                    totalSwaps += 1
                    swaps += 1
                }
            }
            pass += 1
            print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedArray)")
            swaps = 0
        }
    }
}
insertSort(words)
