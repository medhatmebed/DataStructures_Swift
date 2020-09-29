//
//  DataStructures_SwiftTests.swift
//  DataStructures_SwiftTests
//
//  Created by Medhat Mebed on 9/28/20.
//
import Foundation
import XCTest
@testable import DataStructures_Swift


class StackTests: XCTestCase {
    
    var stack = Stack<Int>()

    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func test_push() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func test_peek() {
        XCTAssertEqual(stack.peek(), 4)
    }
    
    func test_pop() {
        XCTAssertEqual(stack.pop(), 4)
        XCTAssertEqual(stack.pop(), 3)
    }
    
    func test_customInitializer() {
        let elements = [1,2,3,4]
        XCTAssertEqual(stack, Stack(elements))
    }
    
    func test_arrayLiteral(){
        let newStack : Stack = ["M","E","D","H","A","T"]
        XCTAssertEqual(newStack, Stack(["M","E","D","H","A","T"]))
    }

}
