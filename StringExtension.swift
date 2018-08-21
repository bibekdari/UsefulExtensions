//
//  StringExtension.swift
//
//  Created by bibek timalsina on 6/2/17.
//  Copyright © 2017 Bibek. All rights reserved.
//

import UIKit

extension String {

    func capitalizingFirstLetter() -> String {
        let first = self.prefix(1).capitalized
        let other = self.dropFirst()
        return first + other
    }
    
    func isEmail() -> Bool {
        let emailTest = NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
        return emailTest.evaluate(with: self)
    }
    
    func url() -> URL? {
        
        if !self.isEmpty {
            return URL(string: self)
        }else {
            return nil
        }
    }
    
    var hasURL: Bool {
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector.matches(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count))
        return !matches.isEmpty
    }
    
    func containedURLs() -> [(url: URL, range: NSRange)] {
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector.matches(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count))
        return matches.flatMap { match -> (URL, NSRange)? in
            guard let range = Range(match.range, in: self),
            let url = String(self[range]).url() else { return nil }
            return (url, match.range)
        }
    }
    
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
}
