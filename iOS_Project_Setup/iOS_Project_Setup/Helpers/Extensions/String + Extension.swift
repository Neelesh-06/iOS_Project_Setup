//
//  String + Extension.swift
//  iOS_Project_Setup
//
//  Created by Neelesh on 23/10/21.
//

import Foundation

extension String {
    
    var trimWhiteSpaces: String {
        self.trimmingCharacters(in: .whitespaces)
    }
    
    static func emptyIfNil(_ optionalString: String?) -> String {
        if let unwrappedString = optionalString {
            return unwrappedString
        } else {
            return "-"
        }
    }
}
