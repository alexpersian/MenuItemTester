//
//  ViewController.swift
//  MenuItemTester
//
//  Created by Alexander Persian  on 4/17/19.
//  Copyright © 2019 Alexander Persian . All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

  @IBOutlet weak var bubbleView: BubbleView!
  @IBOutlet weak var textView: UnselectableTextView!
  @IBOutlet weak var textField: InputTextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }

  private func setup() {
    bubbleView.layer.cornerRadius = 5.0
    textView.backgroundColor = .init(white: 1.0, alpha: 0.5)
    textField.placeholder = "Tap me..."

    bubbleView.associatedTextView = textField
  }

  @IBAction func doneButtonPressed() {
    textField.resignFirstResponder()
  }
}
