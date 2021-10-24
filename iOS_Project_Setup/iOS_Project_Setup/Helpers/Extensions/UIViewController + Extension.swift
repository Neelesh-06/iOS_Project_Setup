//
//  UIViewController + Extension.swift
//  iOS_Project_Setup
//
//  Created by Neelesh on 23/10/21.
//

import UIKit

extension UIViewController {
    
    func instantiateFromStoryboard<T>(_ storyboard: StoryboardName) -> T {
        let identifier = String(describing: T.self)
        return UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main).instantiateViewController(withIdentifier: identifier) as! T
    }
}
