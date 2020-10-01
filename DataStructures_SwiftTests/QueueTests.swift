//
//  QueueTests.swift
//  DataStructures_SwiftTests
//
//  Created by Medhat Mebed on 9/30/20.
//

import Foundation
import XCTest
@testable import DataStructures_Swift

class QueueTests: XCTestCase {
    
    var queueArray = QueueArray<Int>()
    var queueStack = QueueStack<Int>()
    
    func testQueueArrayEnqueue() {
        queueArray.enqueue(1)
        queueArray.enqueue(2)
        queueArray.enqueue(3)
        
        XCTAssertEqual(queueArray.peek, 1)
    }
    
    func testQueueArrayDequeue() {
        queueArray.enqueue(1)
        queueArray.enqueue(2)
        queueArray.enqueue(3)
        queueArray.enqueue(4)
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, 2)
    }
    
    func testQueueStackEnqueue(){
        queueStack.enqueue(1)
        queueStack.enqueue(2)
        queueStack.enqueue(3)
        queueStack.enqueue(4)
        
        XCTAssertEqual(queueStack.peek, 1)
    }
    
    func testQueueStackDequeue() {
        queueStack.enqueue(1)
        queueStack.enqueue(2)
        queueStack.enqueue(3)
        queueStack.enqueue(4)
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek, 2)
    }
    
}
