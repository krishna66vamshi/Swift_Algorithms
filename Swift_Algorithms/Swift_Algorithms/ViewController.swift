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
        //        let intervals = [[1, 3], [2, 9], [8, 10], [15, 18]]
        //        let merged = mergeIntervals(intervals)
        //        print(merged) // Output: [[1, 6], [8, 10], [15, 18]]
        
        // Example usage:
        //        let nums = [1, 2, 3, 4]
        //        let result = productOfArrayExceptSelf(nums)
        //        print(result) // Output: [24, 12, 8, 6]
        
        // Example usage:
        //        let nums = [3, 2, 1, 5, 6, 4]
        //        let k = 2
        //        let result = findKthLargest(nums, k)
        //        print(result) // Output: 5
        
        // Example usage:
        //        let number = 32746
        //        let result = highestPossibleNumber(from: number)
        //        print(result) // Output: 76432
        
        
        //        print(isIntPalindrome(num: 121))
        
        //        print(removeDuplicates(arr: [1,3,3,4,4,5]))
        
        //        swapTwoVariablesWithoutUsingInBuiltMethods()
        //        print(isStringPalindrome())
        
        //        stringManupulations()
        
        //        print(heteroGramString())
        
//        printFibonacciSeries(num: 8)
        
        let vc = PatternsViewController()
//        navigationController?.pushViewController(vc, animated: true)
        
//        reverseIntArray()
        
//        logic1()
        
//        repeatedElementsCount()
        
//        findLargestNum()
        
//        findMissingNo()
        
//        takeCommonElements()
        
//        reverseStringArray()
        
//        findAllSubstrings()
        
//        rotateString()
        
//        interleavetwoStrings()
        
//        twoSum()
        
        print(myFilter(input: [1,2,3,5],condition: { i in
            i > 1
        }))
        
        print(myMap(input: [1,2,3,5], condition: { i in
            "\(i)"
        }))
    }
    
    func myMap<T,U>(input:[T],condition:(T)->(U)) -> [U]{
        var result = [U]()
        
        for i in input{
           result.append(condition(i))
        }
        return result
    }
    
    func myFilter<T>(input:[T],condition:(T)->(Bool))->[T]{
        var result = [T]()
        
        for i in input{
            if condition(i){
                result.append(i)
            }
            
        }
        return result
    }
    
    
    func twoSum(){
        let numbers = [1, 2, 3, 4, 5, 6]
        var set = Set<Int>()
        var pairs = [(Int,Int)]()
        let target = 7
        for number in numbers {
            let compliment = target - number
            if set.contains(compliment){
                pairs.append((compliment,number))
            }
            
            set.insert(number)
        }

        
        print(pairs)
        
    }
    
    func interleavetwoStrings(){
        let s1 = "abc"
        let s2 = "12345"

        var result = ""
        let max = max(s1.count,s2.count)
        for i in 0..<max {
            
            if i < s1.count{
                result.append(s1[s1.index(s1.startIndex, offsetBy: i)])
            }
            
            if i < s2.count{
                result.append(s2[s2.index(s2.startIndex, offsetBy: i)])
            }
        
        }
        
        print(result)
    }
    
    func rotateString(){
        let str = "abcdef"
        let index = str.index(str.startIndex, offsetBy: 2)
        print(str[index..<str.endIndex] + str[..<index])
    }
    
    func findAllSubstrings(){
        let str = "abc"
//        print("All substrings: \(substrings)")  // Output: All substrings: ["a", "ab", "abc", "b", "bc", "c"]
        let arr = Array(str)
        
        var subStrings = [String]()
        for i in 0..<arr.count{
            for j in i..<arr.count{
                subStrings.append(String(arr[i...j]))
            }
        }
        print(subStrings)

        
    }
    
    func reverseStringArray(){
        var originalArray = ["apple", "banana", "cherry","grapes"]
        
        for i in 0..<originalArray.count/2 {
            let temp = originalArray[i]
            originalArray[i] = originalArray[originalArray.count - 1 - i]
            originalArray[originalArray.count - 1 - i] = temp
        }
        
        print(originalArray)
        
    }
    
    func takeCommonElements(){
        let fruitsArray = ["apple", "mango", "blueberry", "orange"]
        let vegArray = ["tomato", "potato", "mango", "blueberry"]

        var commonElements = [String]()
        
        for array in fruitsArray {
            if vegArray.contains(array){
                commonElements.append(array)
            }
        }
        
        print(fruitsArray.filter{vegArray.contains($0)})
        
        print(commonElements)
        
        let set1 = Set(fruitsArray)
        let set2 = Set(vegArray)
        print(set1.intersection(set2))
    }
    
    func findMissingNo(){
        var arr = [17,18,20,22,23,24]
        
        let firstIndex = arr.first ?? 0
        let lastIndex = arr.last ?? 0
        var missingArray = [Int]()
        
        for i in firstIndex...lastIndex{
            if !arr.contains(i){
                missingArray.append(i)
            }
        }
        
        print(missingArray)
    }
    
    func findLargestNum(){
        let arr = [17, 4, 3,0,10,15]

        var max = Int.min
        var min = Int.max

        for item in arr{
            if max < item{
                max = item
            }
            
            if min > item{
                min = item
            }
        }
        print(max,min)
    }
    
    func repeatedElementsCount(){
        let inputArray = ["apple", "banana", "apple", "orange", "banana", "grape", "banana", "apple"]

        var dict = [String:Int]()
        
        for item in inputArray{
            dict.updateValue((dict[item] ?? 0) + 1, forKey: item)
        }
        
        print(dict)
        
        print(dict.filter{$0.value > 1})
    }
    
    func logic1(){
        let items  = [1,20,3,4,3,5,3,3]
        var count = 0
        
        for (i,e) in items.enumerated(){
            
            if e == 3{
                
                if items[i-1] > e{
                    count += 1
                }
                
            }
        }
        
        print(count)
    }
    
    func reverseIntArray(){
        let items = [1,3,6,7,8]
        var reverse = [Int]()
        
        for i in 0..<items.count{
            reverse.append(items[items.count - 1 - i])
        }
        
        print(reverse)
        
    }
    
    func printFibonacciSeries(num:Int){
        
        var fibSeries = [0,1]
        
        for i in 2..<num{
            let sum = fibSeries[i - 1] + fibSeries[i - 2]
            fibSeries.append(sum)
            
        }
        
        print(fibSeries)
    }
    
    func heteroGramString() -> Bool{
        var sentense = "Sky with ccloud".replacingOccurrences(of: " ", with: "")
        var set = Set<Character>()
        
        for char in sentense{
            if set.contains(char){
                return false
            }
            set.insert(char)
        }
        
        return true
    }
    
    func stringManupulations(){
        var greeting = "Guten Tag!"
        var str2 = "Tag!"
        print(greeting[greeting.index(greeting.startIndex, offsetBy: 2)])
        
        //        print(greeting.prefix(2))
        
        if let range = greeting.range(of: str2){
            print(greeting.distance(from: greeting.startIndex, to: range.lowerBound))
        }
    }
    
    func isStringPalindrome() -> Bool{
        let givenStr = "madam"
        var reversedStr = ""
        let arr = Array(givenStr)
        let count = arr.count
        
        for (_,_) in arr.enumerated(){
            //            reversedStr.append(arr[count - 1 - i])
            
        }
        
        for str in givenStr{
            reversedStr = String(str) + reversedStr
        }
        
        
        for _ in stride(from: arr.count - 1, through: 0, by: -1){
            //            reversedStr.append(arr[i])
        }
        
        return givenStr == reversedStr ? true : false
    }
    
    func swapTwoVariablesWithoutUsingInBuiltMethods(){
        var a = 10
        var b = 7
        // a = 7 , b = 10
        
        b = a + b // 17
        a = b - a // 7
        b = b - a
        print(a,b)
    }
    
    func removeDuplicates(arr:[Int]) -> [Int]{
        //        return Array(Set(arr))
        
        var result = [Int]()
        
        for obj in arr{
            if !result.contains(obj){
                result.append(obj)
            }
        }
        
        return result
    }
    
    
    func isIntPalindrome(num:Int) -> Bool{
        
        var givenNum = num
        var reverseNum = 0
        
        while givenNum > 0 {
            let lastDigit = givenNum % 10
            reverseNum = reverseNum * 10 + lastDigit
            givenNum = givenNum/10
        }
        
        return num == reverseNum ? true : false
        
        
    }
    
    func highestPossibleNumber(from number: Int) -> Int {
        // Step 1: Convert the number to an array of digits
        let digits = String(number).compactMap { $0.wholeNumberValue }
        
        // Step 2: Sort the digits in descending order
        let sortedDigits = digits.sorted(by: >)
        
        // Step 3: Combine the sorted digits back into a number
        let highestNumber = sortedDigits.reduce(0) { $0 * 10 + $1 }
        
        return highestNumber
    }
    
    
    
    
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var heap = [Int]()
        
        for num in nums {
            if heap.count < k {
                heap.append(num)
                heap.sort()
            } else if let minVal = heap.first, num > minVal {
                heap[0] = num
                heap.sort()
            }
        }
        
        return heap.first!
    }
    
    
    
    func productOfArrayExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = [Int](repeating: 1, count: n)
        
        // Step 1: Calculate prefix products
        var prefixProduct = 1
        for i in 0..<n {
            result[i] = prefixProduct
            prefixProduct *= nums[i]
        }
        
        // Step 2: Calculate suffix products and combine with prefix products
        var suffixProduct = 1
        for i in (0..<n).reversed() {
            result[i] *= suffixProduct
            suffixProduct *= nums[i]
        }
        
        return result
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

