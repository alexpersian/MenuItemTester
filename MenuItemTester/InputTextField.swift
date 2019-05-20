//
//  InteractableTextField.swift
//  MenuItemTester
//
//  Created by Alexander Persian  on 4/19/19.
//  Copyright © 2019 Alexander Persian . All rights reserved.
//

import UIKit

class InputTextField: UITextField {

  weak var nextResponderOverride: UIResponder?

  override var next: UIResponder? {
    if nextResponderOverride != nil {
      return nextResponderOverride
    } else {
      return super.next
    }
  }

  override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
    if nextResponderOverride != nil {
      return false
    } else {
      return super.canPerformAction(action, withSender: sender)
    }
  }
}
