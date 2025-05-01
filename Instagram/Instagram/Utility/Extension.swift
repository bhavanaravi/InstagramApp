//
//  Extension.swift
//  Instagram
//
//  Created by Encora on 30/04/25.
//

import Foundation
import SwiftUI

extension String {
    func splitString() -> [String] {
        var stringArray: [String] = []
        let trimed = String(self.filter({ !" \n\t\r".contains($0)}))
        
        for (index, _) in trimed.enumerated() {
            let prefixIndex = index+1
            let substringPrefix = String(trimed.prefix(prefixIndex)).lowercased()
            stringArray.append(substringPrefix)
        }
        return stringArray
    }
}
