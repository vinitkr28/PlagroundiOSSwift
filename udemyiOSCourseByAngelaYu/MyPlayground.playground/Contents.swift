import UIKit

var greeting = "Hello, playground"


print("This is ${5+4} and this is ${5-4}")
print("This is $(5+4) and this is \(5-4)")

print("Some ${5+4}")


var a = 5

var b = 8


var c = a

a = b

b = c

print("a is \(a) and b is \(b)")



var numbers = [1, 2, 3, 4, 5]

var number2 = [Int]()
               
               
for (index, number) in numbers.enumerated() {
    //print("The number is \(number) at index \(index).")
    
    if (index == numbers.count-1) {
        break
    }
    
    
    number2.append(number)
    
    //print("number2 is \(number2)")
    
    //number2.append(number2[index] + numbers[index+1])
    
    
    
    let numbers3 = [45, 73, 195, 53]
        
        //Write your code here
        
       // numbers.
        var computedNumbers: [Int] = []


     for i in 0..<numbers3.count {
        
        let nextIndex = (i + 1) % numbers3.count
        let product = numbers3[i] * numbers3[nextIndex]
        computedNumbers.append(product)
         
         print("i is \(i), nextIndex is \(nextIndex), product is \(product)")
    }
        
        
        print(computedNumbers)
    
}



let arrayOFAlpabets: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];

print("random password: \(arrayOFAlpabets.randomElement()!)")

print("random password of six charactors:  \(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])\(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])\(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])\(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])\(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])\(arrayOFAlpabets[Int.random(in: 1...arrayOFAlpabets.count)])")
