//
//  Extensions.swift
//  CopyAndPaste_Tutorial
//
//  Created by 신미지 on 2021/10/09.
//

import UIKit

extension UILabel {
  func enableCopyOnTouch() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped(sender:))) // 터치 시 실행될 함수를 연결한다.
    
    self.isUserInteractionEnabled = true
    self.addGestureRecognizer(tapGesture) // tapGestureRecognizer를 라벨에 붙인다.
  }
  
  @objc
  private func labelTapped(sender: UITapGestureRecognizer) { // 라벨이 터치되었을 때 호출됨
    guard let label = sender.view as? UILabel else {
      return
    }
    UIPasteboard.general.string = label.text // 텍스트가 복사됨
  }
}
