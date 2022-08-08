//
//  ViewController.swift
//  testeLogin
//
//  Created by Thais Morimoto on 12/05/1401 AP.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var TfEmail: UITextField!
    @IBOutlet weak var btEmail: UIView!
    @IBOutlet weak var Tfpassword: UITextField!
    @IBOutlet weak var btpassword: UIView!
    @IBOutlet weak var btSignin: UIButton!
    @IBOutlet weak var btshowpassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btSignin.layer.masksToBounds = true
        btSignin.layer.cornerRadius = btSignin.frame.size.height/2
        
        btpassword.layer.masksToBounds = true
        btpassword.layer.cornerRadius = 5.0
        
        btEmail.layer.masksToBounds = true
        btEmail.layer.cornerRadius = 5.0
        
        btshowpassword.setImage(UIImage(named: "ic_see"), for: .normal)
        btshowpassword.setImage(UIImage(named: "ic_hidden"), for: .selected)
        
        btSignin.isEnabled = false
        btSignin.alpha = 0.5
        
        Tfpassword.delegate = self
        TfEmail.delegate = self
    }

    @IBAction func btshowPassword(_ sender: Any) {
        btshowpassword.isSelected = !btshowpassword.isSelected
        Tfpassword.isSecureTextEntry = !Tfpassword.isSecureTextEntry
       
        }
    
    @IBAction func texfieldEditingchange(_ sender: Any) {
        if TfEmail.text?.count ?? 0 > 0 && Tfpassword.text?.count ?? 0 > 0 {
            btSignin.isEnabled = true
            btSignin.alpha = 1.0
        }else{
            btSignin.isEnabled = false
            btSignin.alpha = 0.5
            
            
        }
            
        }
            
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

    


