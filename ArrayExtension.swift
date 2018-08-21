//
//  ArrayExtension.swift
//
//  Created by bibek timalsina on 5/25/17.
//  Copyright © 2017 Bibek. All rights reserved.
//

import Foundation

extension Array {
    func elementAt(index: Int) -> Array.Iterator.Element? {
        if index < self.count && index >= 0 {
            return self[index]
        }
        return nil
    }
}
