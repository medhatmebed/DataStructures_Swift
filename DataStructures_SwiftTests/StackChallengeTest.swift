//
//  StackChallengeTest.swift
//  DataStructures_SwiftTests
//
//  Created by Medhat Mebed on 9/28/20.
//

import Foundation
import XCTest
@testable import DataStructures_Swift


class StackChallengeTest: XCTestCase {
    
    func testCase1() {
        XCTAssertTrue(checkBlanaceString("()"))
    }
    
    func testCase2() {
        XCTAssertTrue(checkBlanaceString("[{}]"))
    }
    func testCase3() {
        XCTAssertTrue(checkBlanaceString("{[()]}"))
    }
}

func checkBlanaceString(_ str: String) -> Bool {
    
    var stack = Stack<Character>()
    let leftParentheses: [Character] = ["(", "{","["]
    let rightParentheses: [Character] = [")","}","]"]
    for char in str {
        if leftParentheses.contains(char) {
            stack.push(char)
        }else if rightParentheses.contains(char) {
            if stack.isEmpty {
                return false
            }
            stack.pop()
        }
    }
    return stack.isEmpty
}
