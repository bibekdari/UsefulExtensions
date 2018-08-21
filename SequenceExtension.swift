//
//  SequenceExtension.swift
//
//  Created by shishir sapkota on 10/9/17.
//  Copyright © 2017 Shishir. All rights reserved.
//

import Foundation

public extension Sequence {

    func group<U: Hashable>(by key: (Iterator.Element) -> U) -> [U:[Iterator.Element]] {
        var categories: [U: [Iterator.Element]] = [:]
        for element in self {
            let key = key(element)
            if case nil = categories[key]?.append(element) {
                categories[key] = [element]
            }
        }
        return categories
    }
   
}

