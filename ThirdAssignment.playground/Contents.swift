//1. Factorial

let exampleNumber = 9
let finalResult = calculateFactorial(exampleNumber)

func calculateFactorial(_ n: Int) -> Int {
    if n < 0 {
        return -1                                //ფაქტორიალი არ ითვლება უარყოფითზე
    }
    
    if n == 0 {
        return 1                                //საწყისი ციფრის განსაზღვრა. 0 რომ არ დაიწყოს და საბოლოოდ 0 არ მივიღოთ.
    } else {
        return n * calculateFactorial(n - 1)
        
    }
}

print("The factorial of \(exampleNumber) is \(finalResult)")



//2. Fibonacci Numbers

//ეს .append მქონდა დაწერილი და უფრო ადვილად გაკეთებადი იყო, თუმცა პირობაში ეწერა ფუნქციები არ გამოიყენოთო და თავიდან დავწერე. ისიც მაქვს შენახული რო რამე :D

let FibonacciNumbers20 = createFibonacciNumbers(count: 20)

func createFibonacciNumbers(count: Int) -> [Int] {
    if count > 0 {
    } else {
        return []
    }
    
    var fibonacciNumbers: [Int] = []

    if count >= 1 {
        fibonacciNumbers = [0]
    }

    if count >= 2 {
        fibonacciNumbers = [0, 1]  // პირველი  ელემენტები განისაზღვრა
    }

    for i in 2..<count {
        let nextNumber = fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2]
        fibonacciNumbers += [nextNumber]
    }

    return fibonacciNumbers
}

print(FibonacciNumbers20)



//3. Palindrome

// მოკლედ, აქ .count ფუნქციის გარეშე ვერ გავაკეთე.
let palindromeTest = "racecar"

func isPalindrome(_ input: String) -> Bool {
    let letter = Array(input)
    let length = letter.count

    for i in 0..<(length / 2) {
        if letter[i] != letter[length - 1 - i] {
            return false
        }
    }

    return true
}
print(palindromeTest)



//4.  Squares of numbers

let initialArray = [14, 26, 35, 40, 15]

func squareArray(_ array: [Int]) -> [Int] {
    var squaredArray: [Int] = []

    for i in array {
        let squaredElement = i * i
        squaredArray.append(squaredElement)
    }

    return squaredArray
}

let squaredArray = squareArray(initialArray)

print("Squared Array: \(squaredArray)")




//5. return words in Dictionary

let stringToDivide = "All these tasks need more TIME THAN the TIME given for Them. It is NOT normal to expect all these tasks to be done in a DAY."

func countWordsInString(_ input: String) -> [String: Int] {
    var wordCount: [String: Int] = [:]
    
    var currentWord = ""
    
    for i in input {
        if i.isLetter {
            currentWord.append(i)
        } else {
            if !currentWord.isEmpty {
                let lowercasedWord = currentWord.lowercased()
                wordCount[lowercasedWord, default: 0] += 1
                currentWord = ""
            }
        }
    }
    
    if !currentWord.isEmpty {
        let lowercasedWord = currentWord.lowercased()
        wordCount[lowercasedWord, default: 0] += 1
    }
    
    return wordCount
}

let wordCounts = countWordsInString(stringToDivide)
print(wordCounts)



//6. Binary Number
let number = 150
let binaryConverter: (Int) -> String = { i in
    var finalResult = ""
    var n = i

    if n == 0 {
        return "0"
    }

    while n > 0 {
        finalResult = String(n % 2) + finalResult
        n = n / 2
    }

    return finalResult
}

let binaryRepresentation = binaryConverter(number)
print(binaryRepresentation)



//7. Erase odd numbers
let intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

let filterOddNumbers: ([Int]) -> [Int] = { i in
    var result: [Int] = []
    
    for n in i {
        if n % 2 != 0 {
            result.append(n)
        }
    }
    
    return result
}

let oddNumbers = filterOddNumbers(intArray)
print(oddNumbers)



//8. use .map
let integerArray = [10, 22, 53, 467, 501, 64, 26]

let multiplyByTen: ([Int]) -> [Int] = { n in
    return n.map { $0 * 10 }
}

let resultArray = multiplyByTen(integerArray)
print(resultArray)


//9. 3 seconds - ვერ გავაკეთე
//let iintegerArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
//func printSumAfterDelay(number: Double, closure: @escaping(Double) -> ()) {
//    DispatchQueue.main.asyncAfter(deadline: . now()+3) {   // ეს სლაიდიდან გადმოვწერე და არ მუშაობს და ვეღარ გავაგრძელე
////        sumOfIntegerArray =
//    }
//    print(iintegerArray)
//}


//10. high function

let stringArray = ["21", "33", "4", "51", "22", "100", "101", "200"]
func filterNumbers(from stringArray: [String]) -> [Int] {
    let integerArray = stringArray.compactMap { Int($0) }
    let oddNumbers = integerArray.filter { $0 % 2 != 0 }
    return oddNumbers
}

let odddNumbers = filterNumbers(from: stringArray)
print(odddNumbers)
