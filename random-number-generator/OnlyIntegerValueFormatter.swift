//
//  OnlyIntegerValueFormatter.swift
//  Random Number Generator
//
//  Created by Mike on 05/03/2018.
//  Copyright © 2018 Mike. All rights reserved.
//

import Foundation

class OnlyIntegerValueFormatter: NumberFormatter {
    
    override func isPartialStringValid(_ partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>?, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        
        // Ability to reset your field (otherwise you can't delete the content)
        // You can check if the field is empty later
        if partialString.isEmpty {
            return true
        }
        
        // Limit input length
        if partialString.characters.count > 8 {
            return false
        }
        
        // Actual check
        return Int(partialString) != nil
    }
}
