//
//  ViewController.swift
//  MatrixMultiply
//
//  Created by Stanislav Terentyev on 30.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayOne = createRandomArray(100)
        let arrayTwo = createRandomArray(100)
        print(arrayOne)
    }
    
    func createRandomArray(_ x: Int) -> [[Int]] {
        return (0..<x).map {
            _ in [[Int(arc4random_uniform(100) + 1)], Int(arc4random_uniform(100) + 1])
        }
    }
    
}








































//        let myArrayA: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
//        let myArrayB: [[Int]] = [[11,12,13],[14,15,16],[17,18,19]]
//
//        if(myArrayA[0].count != myArrayB.count) {
//            print("Error.  Arrays are not in the right proportion")
//        } else {
//            var myArrayC = Array(repeating: Array(repeating: Int(), count: myArrayB[0].count), count: myArrayA.count)
//
//
//            for var cx = 0, cx < myArrayA.count, cx++ {
//                for var cy = 0; cy < myArrayB[0].count; cy++ {
//                    for var i = 0; i < myArrayB.count; i++ {
//                        myArrayC[cx][cy] += myArrayA[cx][i]*myArrayB[i][cy]
//                    }
//                    print("\(myArrayC[cx][cy])  ")
//                }
//                print()
//            }
//        }

