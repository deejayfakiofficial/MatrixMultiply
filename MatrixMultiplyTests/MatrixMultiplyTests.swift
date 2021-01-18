//
//  MatrixMultiplyTests.swift
//  MatrixMultiplyTests
//
//  Created by Stanislav Terentyev on 30.12.2020.
//

import XCTest
@testable import MatrixMultiply

class MatrixMultiplyTests: XCTestCase {
 //тест на алгоритм
    func test_multiplyMatrix () {
        let vc = ViewController()
        XCTAssertEqual(vc.multiplyMatrix([[1,2,3],[1,2,3],[1,2,3]], [[1,1,1],[2,2,2],[3,3,3]]), [[14,14,14],[14,14,14],[14,14,14]])
    }

}
