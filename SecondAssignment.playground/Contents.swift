//1. exchange possitions:

var randomString = ["tree", "T-shirt", "Beauty", "Road", "Traffic", "Love", "Something"]
var firstIndex = [randomString [0]]
var lastIndex = [randomString [6]]
var midArray = randomString [1 ... 5]
let newString = lastIndex + midArray + firstIndex
print(newString)


//2. remove elements

var initialString = ["tree", "2", "T-shirt", "Beauty", "4", "Road", "Traffic", "Love", "Something", "34", "initial"]
let elementCount = initialString.count
let elementRemove = elementCount / 2 + 1
if elementRemove <= elementCount {
  initialString.removeSubrange(0..<elementRemove)
}
print(initialString)


//3. Even and Odd numbers

var numbers: [Int] = [0,1,2,3,4,5,6,7,8,9,10]
var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for i in numbers {
    if i.isMultiple(of: 2) {
        evenNumbers.append(i)
    } else {
        oddNumbers.append(i)
    }
}
print(evenNumbers, oddNumbers)


//4. MaxValue

var doubleNumbers: [Double] = [5, 7, 10.43, 6, 3.1415, 7.350, 0.025, 117, 0.12]
var maximumValue: Double = doubleNumbers [0]
for i in doubleNumbers {
//    print (i)
    if i > maximumValue {
        maximumValue = i
    }
}
print(maximumValue)


//5. Sorted

var firstArray = [8, 4, 9, 9, 0, 2]
var secondArray = [1, 0, 9, 2, 3, 7, 0, 1]

var sortedArray = firstArray + secondArray

for i in 0..<sortedArray.count - 1 {
    var index = i
    for j in i + 1..<sortedArray.count {
        if sortedArray[j] < sortedArray[index] {
            index = j
        }
    }
    if index != i {
        let temp = sortedArray[i]
        sortedArray[i] = sortedArray[index]
        sortedArray[index] = temp
    }
}

print(sortedArray)


//6.Unique Characters

var stringArray = ["firstElement", "Unique", "line", "for", "7", "88", "firstElement", "option", "letter", "88"]
var uniqueChar = Set<Character>()
for i in stringArray {
    for char in i {
        uniqueChar.insert(char)
    }
}

print(uniqueChar)  // არ ვიცი რამდენად სწორია - ანუ ელემენტებად კი არ დავშალე, არამედ ასოებად. ჰოდა იქ კი character ეწერა და ალბათ ეგრე უნდა იყოს, მაგრამ ცალკე ელემენტებად არ გამომიტანია.


//7. Int Set

var setOne: Set = [1,3,4,5,6,8,9]
var setTwo: Set = [5,7,2,9,0,2,10]
var union = setOne.union(setTwo)
var intersection = setOne.intersection(setTwo)
var difference = setOne.subtracting(setTwo)
print(union)
print(intersection)
print(difference)


//8. Sub-Set

var firstSet: Set<String> = ["First", "Set", "String", "Var", "Equals"]
var secondSet: Set<String> = ["First", "Set", "String", "Var", "Equals", "Comma", "Sub", "Line", "Semicolon"]
if firstSet.isSubset(of: secondSet) {
    print("firstSet is a sub-Set of a secondSet")
} else {
    print("secondSet is a sub-Set of a firstSet")
}


//9. Element Check in Array

var initialArray = ["apple", "banana", "fruits", "99", "apple", "number", "74", "nine", "checking", "number", "67"]
var uniqueElements = Set(initialArray)

if initialArray.count == uniqueElements.count {
    print("array-ში ყველა ელემენტი განსხვავებულია")
} else {
    print("array შეიცავს მსგავს ელემენტებს")
}
//print(initialArray, uniqueElements)


//10. Dictionary

var movieRatings = [
    "Movie1": 5.5,
    "Movie2": 8.9,
    "Movie3": 1.3
]

movieRatings["Movie4"] = 7.2
movieRatings["Movie5"] = 3.8
movieRatings["Movie6"] = 6.9
movieRatings["Movie7"] = 4.3
movieRatings["Movie8"] = 7.7

let totalRating = movieRatings.values.reduce(0.0, +) / 2  // movieRatings.values.reduce  მოვნახე და არ ვიცი, კი გამოვიდა, მაგრამ არ ვიცი ასე უნდა მექნა თუ არა. ამის ზევით რაც არის ეგ გავაკეთე და ეს ხაზი მოვიძიე, სინტაქსი ჩემი შედგენილი არაა.

print(totalRating)

