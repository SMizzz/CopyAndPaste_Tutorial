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
    configureCopyLabel()
    // Do any additional setup after loading the view.
  }
  
  private func configureCopyLabel() {
    copyLabel.text = "안녕하세요, 이것은 복사될 문구입니다."
    let tapGesture = UITapGestureRecognizer(
      target: self,
      action: #selector(handleCopyLabel))
//    copyLabel.isUserInteractionEnabled = true
    copyLabel.addGestureRecognizer(tapGesture)
  }
  
  @objc func handleCopyLabel() {
    //    guard let label = copyLabel else {
    //      return
    //    }
    print("tapped")
    UIPasteboard.general.string = copyLabel.text
  }
  
  @IBAction func nextBtnTap(_ sender: Any) {
    let mainSB = UIStoryboard(name: "Main", bundle: nil)
    let pastedVC = mainSB.instantiateViewController(withIdentifier: "PastedVC")
    navigationController?.pushViewController(pastedVC, animated: true)
  }
  
}

