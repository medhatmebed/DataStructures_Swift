//
//  BinaryTreeTestCase.swift
//  DataStructures_SwiftTests
//
//  Created by Medhat Mebed on 10/3/20.
//

import Foundation
import XCTest
@testable import DataStructures_Swift

final class BinaryTreeTestCase: XCTestCase {
    
    var tree: BinaryNode<Int> = {
        let zero = BinaryNode(value: 0)
        let one = BinaryNode(value: 1)
        let five = BinaryNode(value: 5)
        let seven = BinaryNode(value: 7)
        let eight = BinaryNode(value: 8)
        let nine = BinaryNode(value: 9)
        seven.leftChild = one
        one.leftChild = zero
        one.rightChild = five
        seven.rightChild = nine
        nine.leftChild = eight
        return seven
    }()
    
    
    func test_visualizeBinaryTree() {
        print(tree.description)
    }
    
    func test_traverseInOrder() {
        var testArrary : [Int] = []
        tree.traverseInOrder{testArrary.append($0)}
        XCTAssertEqual(testArrary, [0,1,5,7,8,9])
    }
}
