//
//  Int + Extension.swift
//  iOS_Project_Setup
//
//  Created by Neelesh on 23/10/21.
//

import Foundation

extension Int {
    
    static func zeroIfNil(_ optionalNumber: Int?) -> Int {
        if let unwrappedNumber = optionalNumber {
            return unwrappedNumber
        } else {
            return 0
        }
    }
}
