//
//  UITextField + Extension.swift
//  iOS_Project_Setup
//
//  Created by Neelesh on 23/10/21.
//

import UIKit

extension UITextField {
    
    enum PaddingDirection {
        case left(CGFloat), right(CGFloat), bothSides(CGFloat)
    }
    
    func addPadding(_ direction: PaddingDirection) {
        self.clipsToBounds = true
        
        switch direction {
        case .left(let space):
            let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: space, height: self.frame.height))
            self.leftView = leftPaddingView
            self.leftViewMode = .always
            
        case .right(let space):
            let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: space, height: self.frame.height))
            self.rightView = rightPaddingView
            self.rightViewMode = .always
            
        case .bothSides(let space):
            let equalPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: space, height: self.frame.height))
            
            self.leftView = equalPaddingView
            self.leftViewMode = .always
            
            self.rightView = equalPaddingView
            self.rightViewMode = .always
        }
    }
    
    func addToolbar() {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        toolbar.barStyle = .default
        toolbar.backgroundColor = UIColor(red: 0.8255901933, green: 0.8356804252, blue: 0.8568416238, alpha: 1)
        toolbar.items = [
            UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dismissKeyboard)),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissKeyboard))
        ]
        toolbar.sizeToFit()
        self.inputAccessoryView = toolbar
    }
    
    @objc private func dismissKeyboard() {
        self.resignFirstResponder()
    }
}
