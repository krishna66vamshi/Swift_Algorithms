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
        print(printFibonacciSeries(upto: 8)) // [0, 1, 1, 2, 3, 5, 8, 13]
    }

    func printFibonacciSeries(upto num:Int) -> [Int]{
        
        var fibSeries = [0,1]
        
        for i in 2..<num{
            let digit = fibSeries[i - 1] + fibSeries[i - 2]
            fibSeries.append(digit)
        }
        
        return fibSeries
        
        
        
    }

}

