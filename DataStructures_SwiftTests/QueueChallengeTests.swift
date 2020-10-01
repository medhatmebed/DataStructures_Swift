//
//  QueueChallengeTests.swift
//  DataStructures_SwiftTests
//
//  Created by Medhat Mebed on 9/30/20.
//

import Foundation
import XCTest
@testable import DataStructures_Swift

class QueueChallengeTests: XCTestCase {
    
    var queue = QueueStack<String>()
    
    
    func testNextPlayer() {
        queue.enqueue("Medhat")
        queue.enqueue("Bleard")
        queue.enqueue("Perry")
        queue.enqueue("Andrew")
        queue.nextPlayer()
        
        
        XCTAssertEqual(queue.peek, "Bleard")
        queue.nextPlayer()
        XCTAssertEqual(queue.nextPlayer(), "Perry")
    }
}
protocol BoardGameManager {
    associatedtype Player
    
    mutating func nextPlayer() -> Player?
}

extension QueueStack: BoardGameManager {
    typealias  Player = T
    
    @discardableResult
    mutating func nextPlayer() -> T? {
        guard let player = dequeue() else {
            return nil
        }
        enqueue(player)
        return player
    }
}
