//
//  PastedViewController.swift
//  CopyAndPaste_Tutorial
//
//  Created by 신미지 on 2021/10/09.
//

import UIKit

class PastedViewController: UIViewController {
  
  @IBOutlet weak var copyLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let storedString = UIPasteboard.general.string {
      print(storedString)
      copyLabel.text = storedString
    }
  }
  
}
