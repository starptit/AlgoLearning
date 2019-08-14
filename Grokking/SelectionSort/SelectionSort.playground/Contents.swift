import UIKit

func selectionSort(arr: [Int]) -> [Int] {
    var copyArr = arr
    for i in 0..<copyArr.count {
        for j in (i+1)..<copyArr.count {
            if copyArr[j] > copyArr[i] {
                let temp = copyArr[i]
                copyArr[i] = copyArr[j]
                copyArr[j] = temp
            }
        }
    }
    
    return copyArr
}

let sample = [8,6,2,3,6,4,10,2,5,1]

print(selectionSort(arr: sample))
