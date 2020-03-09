/*:
 # Monday Stretch Problem 3.1
 ## Closures
 
 ### Instructions:
 1. User filter to create an array that contains all the numbers that are multiples of 3 from the numbersArray. Print your result.
 2. Find the largest number from the previous number array and then print it. Use reduce to solve. Print your result.
 3. Join all the string objects in the stringsArray into one string using reduce. Make sure spaces are in between each string. Print your result.
 
 ### Black Diamond 💎💎💎
 In one line convert blackDiamondDictionary into a joined string describing Mama, Papa, and Baby bear's porridge temperature. CompactMap, Reduce, and anonymouse closure arguments will be your friend.
*/

import Foundation

var numbersArray = [11,24,45,44,59,43,88,93,58,11,13,14,15,190]
var stringsArray = ["I", "Love", "DevMountain"]
var blackDiamondDictionary = ["Mama" : "too cold", "Papa" : "too hot", "Baby" : "just right"]

let multThreeArray = numbersArray.filter { $0 % 3 == 0 }

print(numbersArray)

print(multThreeArray)

let maxNum = multThreeArray.reduce(Int.min) { max($0, $1) }

print(maxNum)

let oneString = stringsArray.reduce("", { $0 + " " + $1 } )

print(oneString)

let threeBearsPorridgeMapped = blackDiamondDictionary.compactMap { (bear, temp) in "\(bear) porridge is too \(temp)!"
}

print(threeBearsPorridgeMapped)

let threeBearsPorridgeSentences = threeBearsPorridgeMapped.reduce("", { (paragraph, sentence) in " \(paragraph)\n\(sentence)"} )

print(threeBearsPorridgeSentences)
//: [Next](@next)
