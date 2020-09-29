//
//  Stack.swift
//  DataStructures_Swift
//
//  Created by Medhat Mebed on 9/28/20.
//

import Foundation



struct Stack<Element: Equatable> : Equatable {
    
    private var storage:[Element] = []
    var isEmpty : Bool {
        return peek() == nil
    }
    
    init() {}
    
    init(_ elements: [Element]) {
        storage = elements
    }
    
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
    
}


extension Stack: CustomStringConvertible {
    var description: String {
        return storage
            .map{ "\($0)" }
            .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
