//: Playground - noun: a place where people can play

import UIKit

var array1 = [String]()

var array2: [Double] = [13.3, 27.2, 19.6, 100.5]

var array3 = ["John", "Lu", "Anna Maria", "Sofia", "Leila"]

var i = 0

for i in i..<3 {
    array1.append(array3[i])
    var dbl = array2[i] * array2[i+1]
    array2.append(dbl)
    array3.append(array1[i])
}

array1.remove(at: 1)
array2.remove(at: 3)
array3.remove(at: array3.count - 1)

array2.removeAll()

print(array1)

array1.insert("Two", at:1)

print(array1)

var oddNumbers = [Int]()

i = 0

for i in i...100 {
    if i % 2 != 0 {
        print(i)
        oddNumbers.append(i)
    }
}

var sums = [Int]()
i = 0
for i in i..<oddNumbers.count {
    sums.append(oddNumbers[i] + 5)
}

i = 0

repeat {
    print("The sum is: \(sums[i])")
    i += 1
} while i < sums.count


