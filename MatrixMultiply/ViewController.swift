//
//  ViewController.swift
//  MatrixMultiply
//
//  Created by Stanislav Terentyev on 30.12.2020.
//

import UIKit
import MetalPerformanceShaders

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let matrixOne = newMatrix()
        let matrixTwo = newMatrix()
        let matrixThree = multiplyMatrix(matrixOne, matrixTwo)
            print(matrixThree)
    }
    
    func multiplyMatrix (_ matrixOne: [[Int]], _ matrixTwo: [[Int]]) -> [[Int]] {
        let size = matrixOne.count
        var result: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: size), count: size)
        for i in 0..<result.count {
                for j in 0..<matrixOne.count {
                    for k in 0..<matrixTwo.count {
                        result[i][j] += matrixOne[i][k] * matrixTwo[k][j]
                    }
                }
            }
        return result
    }
    
    func newMatrix () -> [[Int]] {
        var matrix: [[Int]] = []
        for i in 0..<100 {
            matrix.append([Int(arc4random_uniform(10))])
            for _ in 0..<100 {
                matrix[i].append(contentsOf: [Int(arc4random_uniform(10))])
            }
        }
        return matrix
    }
    
}
