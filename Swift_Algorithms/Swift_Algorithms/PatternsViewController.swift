//
//  PatternsViewController.swift
//  Swift_Algorithms
//
//  Created by Hyper Thread Solutions Pvt Ltd on 19/08/24.
//

import UIKit

class PatternsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
//        printPattern()
        
//        printRightAngledTriangle()
        
        pattern1()
    }
    
    
    func pattern1(){
       /*
        *
        * *
        *  A  *
        * B C *
        * D E F *
        * * * * * *
        */
        
        var ascii = 65
        let rows = 6
        for row in 1...rows{
            for column in 0..<row{
                if row == 1 || row == rows || column == row - 1 || column == 0{
                    print("*",terminator: "")
                }else{
                    print(Character(UnicodeScalar(ascii)!),terminator: "")
                    ascii += 1
                }
            }
            
            print()
            
        }

    }
    
    func printRightAngledTriangle(){
        /*
         *
         * *
         * * *
         * * * *
         * * * * *
         
         1
         2 3
         4 5 6
         7 8 9 10

         */
        
        let rows = 5
        
        for i in 1...rows{
            for _ in 0..<i{
                print("*",terminator: "")
            }
            print()
        }
        var index = 1
        
        for i in 1...rows{
            for _ in 0..<i{
                print(index,terminator: "")
                index += 1
            }
            print()
        }
        
    }
    
    
   
    
    func printPattern(){
        /*
         * 0 *
         0 * 0
         * 0 *
         */
        
        let rows = 3
        for i in 0..<rows{
            for j in 0..<rows{
                if j % 2 == 0{
                    if i % 2 == 0{
                        print("*",terminator: "")
                    }else{
                        print("0",terminator: "")
                    }
                }else{
                    if i % 2 == 0{
                        print("0",terminator: "")
                    }else{
                        print("*",terminator: "")
                    }
                }
            }
            
            print()
        }
    }
    
}
