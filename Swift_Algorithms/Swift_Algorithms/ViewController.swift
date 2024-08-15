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
        

        print(findRepeatedCharacters(str: "abcda")) //["a": 2, "c": 1, "d": 1, "b": 1]
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

