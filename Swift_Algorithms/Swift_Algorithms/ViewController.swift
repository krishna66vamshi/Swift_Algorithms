//
//  ViewController.swift
//  Swift_Algorithms
//
//  Created by Hyper Thread Solutions Pvt Ltd on 15/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        
        //        print(fibonacciSeries(upto: 8)) // [0, 1, 1, 2, 3, 5, 8, 13]
        
        //        print(findArmstrongNumber(num: 153))
        
        //        print(twoSumProblem(num: [3,4,5,6,8,1,2],target: 7))
        
        //        print(twoSumProblemReturnIndexes(num: [3,4,5,6,8,10,20],target: 7)) //[1, 0]
        
        
        //        print(findRepeatedCharacters(str: "abcda")) //["a": 2, "c": 1, "d": 1, "b": 1]
        
//        print(findFirstThreeLargestNumbers(num: [1,2,3,6,7]))
//
//        print(findSecondLargest(fromString: "ab123efg67"))
        
//        findGivenStringsAnagramOrNot(str1: "eat", str2: "ate")

        
//        let words = ["eat", "tea", "tan", "ate", "nat", "bat"]
//        let groupedAnagrams = groupAnagrams(words)
//        print(groupedAnagrams)
    
        // Example usage:
//        let testString1 = "()[]{}"
//        let testString2 = "([)]"
//        let testString3 = "{[]}"

//        print(isValidParentheses(testString1))  // Output: true
//        print(isValidParentheses(testString2))  // Output: false
//        print(isValidParentheses(testString3))  // Output: true

        
        // Example usage:
        let intervals = [[1, 3], [2, 9], [8, 10], [15, 18]]
        let merged = mergeIntervals(intervals)
        print(merged) // Output: [[1, 6], [8, 10], [15, 18]]

        
    }
    
    func mergeIntervals(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
        
        // Step 1: Sort intervals by their start times
        let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
        print("sortedIntervals",sortedIntervals)
        var mergedIntervals = [[Int]]()
//
        for interval in sortedIntervals {
            // If mergedIntervals is empty or there's no overlap, add the interval
            if mergedIntervals.isEmpty || mergedIntervals.last![1] < interval[0] {
                mergedIntervals.append(interval)
            } else {
                // There is overlap, merge the intervals
                mergedIntervals[mergedIntervals.count - 1][1] = max(mergedIntervals.last![1], interval[1])
            }
        }
        
        return mergedIntervals
    }

   
    
    
    func isValidParentheses(_ s: String) -> Bool {
        var stack = [Character]()

        // Dictionary to match closing brackets with corresponding opening brackets
        let matchingParenthesis: [Character: Character] = [")": "(", "}": "{", "]": "["]

        for char in s {
            if matchingParenthesis.values.contains(char) {
                // If it's an opening bracket, push it onto the stack
                stack.append(char)
            } else if let match = matchingParenthesis[char] {
                // If it's a closing bracket, check if the top of the stack matches
                if stack.isEmpty || stack.removeLast() != match {
                    return false
                }
            }
        }

        // In the end, stack should be empty if all parentheses were matched
        return stack.isEmpty
    }


    
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramGroups = [String: [String]]()
        
        for str in strs {
            // Sort the string to create a key
            let sortedStr = String(str.sorted())
            
            print("sortedStr",sortedStr)
            
            // Add the original string to the group in the dictionary
            anagramGroups[sortedStr, default: []].append(str)
            print("anagramGroups",anagramGroups)

        }
        
        // Return all the grouped anagrams as an array of arrays
        return Array(anagramGroups.values)
    }

  

    
    
    func findGivenStringsAnagramOrNot(str1:String,str2:String){
        var dict = [Character:Int]()
        
        for char in str1{
            let value = dict[char] ?? 0
            dict.updateValue(value + 1, forKey: char)
        }
        
        for char in str2{
            let value = dict[char] ?? 0
            dict.updateValue(value - 1, forKey: char)
        }
        
        print(dict)
    }
    
    
    
    
    func findSecondLargest(fromString str:String) -> [Int]{
        var largest = Int.min
        var secondLargest = Int.min
        var thirdLargest = Int.min
        let digits = str.filter{$0.isNumber}.map{Int(String($0)) ?? 0}
        for digit in digits {
            
            if digit > largest{
                thirdLargest = secondLargest
                secondLargest = largest
                largest = digit
            }else if digit > secondLargest && digit != largest{
                thirdLargest = secondLargest
                secondLargest = digit
            }else if digit > thirdLargest && digit != secondLargest{
                thirdLargest = digit
            }
            
        }
        
        return [largest,secondLargest,thirdLargest]
    }
    
    func findFirstThreeLargestNumbers(num:[Int]) -> [Int]{
        var largest = Int.min
        var secondLargest = Int.min
        var thirdLargest = Int.min

        for number in num {
            if number > largest {
                thirdLargest = secondLargest
                secondLargest = largest
                largest = number
            } else if number > secondLargest && number != largest {
                thirdLargest = secondLargest
                secondLargest = number
            }else if number > thirdLargest && number != secondLargest{
                thirdLargest = number
            }
        }
        return [largest,secondLargest,thirdLargest]
    }
    
    func findRepeatedCharacters(str:String) -> [Character:Int]{
        var repeatedCharDict = [Character:Int]()
        for char in str{
            let dictValue = repeatedCharDict[char] ?? 0
            repeatedCharDict.updateValue(dictValue + 1, forKey: char)
        }
        return repeatedCharDict
    }
    
    func twoSumProblemReturnIndexes(num:[Int],target:Int) -> [Int]{
        var dict = [Int:Int]()
        var result = [Int]()
        
        for (index,element) in num.enumerated(){
            let compliment = target - index
            print("compliment",compliment)
            if let value = dict[compliment]{
                print("value",value)
                result.append(value)
            }
            
            dict[element] = index
        }
        
        print("dict",dict) // [6: 3, 8: 4, 20: 6, 5: 2, 4: 1, 3: 0, 10: 5]
        
        return result
        
    }
    
    
    func twoSumProblem(num:[Int],target:Int) -> [(Int,Int)]{
        var uniquePairs = Set<Int>()
        var result = [(Int,Int)]()
        
        for i in num{
            let compliment = target - i
            if uniquePairs.contains(compliment){
                result.append((compliment,i))
            }
            uniquePairs.insert(i)
        }
        
        return result
        
    }
    
    func fibonacciSeries(upto num:Int) -> [Int]{
        
        var fibSeries = [0,1]
        
        for i in 2..<num{
            let digit = fibSeries[i - 1] + fibSeries[i - 2]
            fibSeries.append(digit)
        }
        
        return fibSeries
    }
    
    func findArmstrongNumber(num:Int) -> Bool{
        
        var givenNum = num
        var result = 0
        
        while givenNum > 0 {
            let lastDigit = givenNum % 10
            result = result + (lastDigit * lastDigit * lastDigit)
            givenNum = givenNum/10
        }
        
        if num == result{
            return true
        }else{
            return false
        }
        
    }
    
    
    
}

