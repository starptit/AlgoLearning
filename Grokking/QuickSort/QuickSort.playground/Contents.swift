import UIKit
/*
func sum(index: Int, arr: [Int]) -> Int {
    if arr.count == 0 {
        return 0
    }
    var copyArr: [Int] = []
    if index + 1 < arr.count {
        copyArr = Array(arr[(index + 1)..<arr.count])
    }
    
    return arr[0] + sum(index: index, arr: copyArr)
}

let sample = [1,2,6,3,4,5]

print("Sum = ", sum(index: 0, arr: sample))

// -----------------------------------
func count(arr: [Int]) -> Int {
    if arr == [] {
        return 0
    }
    var copyArr = arr
    copyArr.remove(at: 0)
    return 1 + count(arr: copyArr)
}

print("Count = ", count(arr: sample))


// -----------------------------------
func maximum(currentMax: Int, arr: [Int]) -> Int {
    if arr == [] {
        return currentMax
    }
    var copyArr = arr
    var copyMax = currentMax
    if copyArr[0] > copyMax {
        copyMax = copyArr[0]
    }
    copyArr.remove(at: 0)
    return maximum(currentMax: copyMax, arr: copyArr)
}

print("Maximum = ", maximum(currentMax: sample[0], arr: sample))
*/
// -----------------------------------

func quickSort(arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    
    let pivot = arr[0]
    var less: [Int] = []
    var greater: [Int] = []
    
    for i in 1..<arr.count {
        if arr[i] > pivot {
            greater.append(arr[i])
        } else {
            less.append(arr[i])
        }
    }
    
    return quickSort(arr: less) + [pivot] + quickSort(arr: greater)
}

let randomArray = [4,2,20,9,6,4,8,1]
print("Sorted = ", quickSort(arr: randomArray))
