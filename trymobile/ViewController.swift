//
//  ViewController.swift
//  trymobile
//
//  Created by apple on 7/18/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let mobileno = "8438071387"
    
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.delegate = self
    //text.text =  "Enter The mobilenumber"
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil && range.location < 10
    }
    
    func showalret(title:String,message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction( UIAlertAction (title:"ok", style: UIAlertAction.Style.default, handler: nil) )
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func btnac(_ sender: Any) {
       if (mobileno == text.text!)
            {
           showalret(title: mobileno, message: "your number is match")
       }
        else if (mobileno != text.text){
        
           showalret(title: "warning", message: "your number is  not match")
       }else{
           showalret(title:"EMPTY", message:"enter the number" )
       }
    }
    
}

