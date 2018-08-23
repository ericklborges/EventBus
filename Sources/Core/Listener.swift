//
//  Listener.swift
//  EventBus
//
//  Created by thiago.lioy on 22/08/18.
//  Copyright © 2018 thiagolioy. All rights reserved.
//

import Foundation

public class Listener<T: Event> {
    var identifier: String {
        return String(describing: self)
    }
    func handle(event: T) {}
}

extension Listener: Hashable {
    public var hashValue: Int {
        return identifier.hashValue
    }
    
    public static func == (lhs: Listener<T>, rhs: Listener<T>) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}