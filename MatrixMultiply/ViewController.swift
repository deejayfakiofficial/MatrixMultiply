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
        let matrixOne = newMatrix()
        let matrixTwo = newMatrix()
        let matrixThree = multiplyMatrix(matrixOne, matrixTwo)
        for i in matrixThree {
            DispatchQueue.main.async {
                print(i)
            }
        }
    }
    
    func multiplyMatrix (_ matrixOne: [[Int]], _ matrixTwo: [[Int]]) -> [[Int]] {
        let size = matrixOne.count
        var result: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: size), count: size)
        print("Final matrix is: ")
        for i in 0..<result.count {
            for j in 0..<matrixOne.count {
                for k in 0..<matrixTwo.count {
                    result[i][j] += matrixOne[i][k] * matrixTwo[k][j]
                }
            }
//            let queue = DispatchQueue.global()
//            queue.async {
//                print(result[i])
//            }
        }
        return result
    }
    
    func newMatrix () -> [[Int]] {
        var matrix: [[Int]] = []
        for i in 0..<100 {
            matrix.append([Int(arc4random_uniform(3))])
            for _ in 0..<100 {
                matrix[i].append(contentsOf: [Int(arc4random_uniform(3))])
            }
        }
        return matrix
    }
}
