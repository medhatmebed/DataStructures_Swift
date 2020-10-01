//
//  Queue.swift
//  DataStructures_Swift
//
//  Created by Medhat Mebed on 9/28/20.
//

import Foundation

protocol Queue {
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<Element>: Queue {
    private var array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    var peek: Element? {
        return array.first
    }
    mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    @discardableResult
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : array.removeFirst()
    }
}

struct QueueStack<T>: Queue {
    
    private var dequeueStack : [T] = []
    private var enqueueStack : [T] = []
    
    var isEmpty: Bool {
        return dequeueStack.isEmpty && enqueueStack.isEmpty
    }
    var peek: T? {
        return dequeueStack.isEmpty ? enqueueStack.first : dequeueStack.last
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
    
}
