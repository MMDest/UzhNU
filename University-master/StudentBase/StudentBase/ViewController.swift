//
//  ViewController.swift
//  StudentBase
//
//  Created by Andriy on 9/16/19.
//  Copyright © 2019 Andriy. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

  
  @IBOutlet weak var loginTextField: UITextField!
  
  @IBOutlet weak var passwordTextField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    hideKeyboardWhenTappedAround()
    view.endEditing(true)
}
  var login = "andriybojkoo@gmail.com"
  var pass = "1q2w3ezxc"
  
  @IBAction func loginAction(_ sender: Any) {
    if ((loginTextField.text! == login)&&(passwordTextField.text! == pass)){
      
      print("You are login!!")
    }
    
    
  }
  

}
