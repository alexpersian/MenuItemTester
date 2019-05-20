//
//  UnselectableTextView.swift
//  MenuItemTester
//
//  Created by Alexander Persian  on 4/17/19.
//  Copyright © 2019 Alexander Persian . All rights reserved.
//

import UIKit

class UnselectableTextView: UITextView {
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.isEditable = false
    self.isSelectable = false
  }

  public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                                shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    return true
  }
}
