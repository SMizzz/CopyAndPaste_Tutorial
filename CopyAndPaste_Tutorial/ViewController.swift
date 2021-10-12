//
//  ViewController.swift
//  CopyAndPaste_Tutorial
//
//  Created by 신미지 on 2021/10/09.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var copyLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  
  
  @IBAction func nextBtnTap(_ sender: Any) {
    UIPasteboard.general.string = copyLabel.text
    
    let mainSB = UIStoryboard(name: "Main", bundle: nil)
    
    guard let pastedVC = mainSB.instantiateViewController(withIdentifier: "PastedVC") as? PastedViewController else { return }
    
    navigationController?.pushViewController(pastedVC, animated: true)
  }
  
}

