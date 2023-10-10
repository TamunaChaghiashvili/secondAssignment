//1. sum of the variables

let firstNumber: Int = 51
let secondNumber: Int = 7
let sumOftheNumbers = firstNumber + secondNumber // also can be  - print (firstNumber + secondNumber)
print (sumOftheNumbers)


// 2. range

let numberInRange: Int = 87

if numberInRange > 10 && numberInRange <= 20 {
    print ("\(numberInRange) is between 10 & 20")
} else if numberInRange > 20 && numberInRange <= 50 {
    print ("\(numberInRange) is between 20 & 50")
} else if numberInRange > 50 && numberInRange <= 100 {
    print ("\(numberInRange) is between 50 & 100")
} else if numberInRange > 100 {
    print ("\(numberInRange) is more than 100")
}

// Me mgoni es Switch sheizleboda, magram Switch ver gavige


// 3. for - in cycle

for number in 1 ... 20 {
    print (number, terminator: " ")  // it works, but not sure about it - found on the internet. with just this " " it was not working
}
print ()                             // the same, found about this step on the internet


// 4. While loop
// not sure about this one - the answer is not correct

var oddNumbers = 1
var oddNumbersum = 0

while oddNumbers <= 100 {
    oddNumbers += 2
    oddNumbersum += oddNumbers  // I have a question here.
}
print (oddNumbersum)

// 5. Reverse String
// not sure about this one too - I searched for the string.reversed and .append functions on the internet.
//Did it with for - in. thought about while, but I needed to index the string.

var String = "I am not sure about this task"
var reverseString = ""
for character in String.reversed() {
    reverseString.append(character)
}
print (reverseString)


// 6. Two digit numbers
//used this operators: var a = 99 / 10; var a = 99 % 10

for number in 10 ... 99 {
    let firstDigit: Int = number / 10
    let secondDigit: Int = number % 10
    
    if firstDigit == secondDigit {
        print (number, terminator: " ")
    }
}
print ()


//7. reversed nine digit number
// wanted to do the same as with the string reverse, but eventually did this, because string would not be the same as the digit.

var initialNumber  = 567890123
var reverseInitialNumber = 0

while initialNumber > 0 {
    let reversedDigit  = initialNumber % 10
    reverseInitialNumber = reverseInitialNumber * 10 + reversedDigit
    initialNumber /= 10
}

print ("\(reverseInitialNumber)")


// 8. Useing Bool

var isNumberFound = false
var startNumber = 1
while !isNumberFound {
    if startNumber % 5 == 0 && startNumber % 9 == 0 {
        isNumberFound = true
    } else {
        startNumber += 1
    }
}
print ("\(startNumber)")


//9. Switch - first

let month = "April"

switch month {
case "August":
    print ("It is too early for a winter")
case "September":
    print ("Do not worry, it is just a Fall")
case "February":
    print ("Panic")
case "April":
    print ("Spring, Almost there!")
case "June":
    print ("Summer is here")
default:
    print ("just a regular year")
}


// 10. TrafficLight
//  "❤️", "💛", "💚"

var initialLight = "❤️"
var infinitLoop = true

while infinitLoop {
    switch initialLight {
    case "❤️":
        print ("❤️", terminator: "->")
        initialLight = "💛"
    case "💛":
        print ("💛", terminator: "->")
        initialLight = "💚"
    case "💚":
        print ("💚", terminator: "->")
        initialLight = "❤️"
    default:
        print ("Break")
    }
}
print ()
