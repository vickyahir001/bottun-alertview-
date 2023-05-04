//
//  ViewController.swift
//  tik tek toy
//
//  Created by R81 on 15/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var impgePicker: UIImageView!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var bt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               set()
        
        
    }
           func set ()
        {
            bt.layer.backgroundColor=UIColor.gray.cgColor
            bt.layer.cornerRadius=0.5
            bt.layer.borderColor=UIColor.black.cgColor
            bt.layer.borderWidth=0.1
            bt.layer.shadowColor=UIColor.black.cgColor
            bt.layer.shadowOffset=CGSize(width: 5, height: 0.5)
            bt.layer.shadowOpacity=0.5
        }
    
    @IBAction func bottonAction(_ sender: UIButton) {
    
        if userNameText.text == ""{
            alert(messege: "please enter details")
        }  else if userNameText.text?.count ?? 0 < 8{
            alert(messege: "please minimum 8 charactors enter")
        }
          
          
    
        
    }
    
    func alert(messege: String){
        let a = UIAlertController (title: "error", message: messege, preferredStyle: .alert)
        a.addAction (UIAlertAction(title: "ok", style: .default, handler: nil))
//        a.addAction(UIAlertAction(title: "cancle", style:.destructive , handler: nil))
        present(a, animated: true, completion: nil)
        
    }
}
