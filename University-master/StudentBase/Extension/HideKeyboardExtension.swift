//
//  HideKeyboardExtension.swift
//  StudentBase
//
//  Created by Andriy on 9/17/19.
//  Copyright © 2019 Andriy. All rights reserved.
//

import UIKit

public extension UIViewController {
  private struct AssociatedKey {
    static var hideKeyboardRecognizer = "hideKeyboardRecognizer"
  }
  
  var hideKeyboardRecognizer: UITapGestureRecognizer! {
    get {
      return objc_getAssociatedObject( self, &AssociatedKey.hideKeyboardRecognizer ) as? UITapGestureRecognizer
    }
    set(newValue) {
      objc_setAssociatedObject( self, &AssociatedKey.hideKeyboardRecognizer, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN )
    }
  }
  
  func hideKeyboardWhenTappedAround() {
    hideKeyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    hideKeyboardRecognizer.cancelsTouchesInView = false
    view.addGestureRecognizer(hideKeyboardRecognizer)
  }
  
  func disableEventHideKeyboard() {
    view.removeGestureRecognizer(hideKeyboardRecognizer)
  }
  
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}
