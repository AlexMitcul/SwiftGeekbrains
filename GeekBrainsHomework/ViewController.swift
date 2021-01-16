//
//  ViewController.swift
//  GeekBrainsHomework
//
//  Created by Александр Мицкул on 16.01.2021.
//

import UIKit

class ViewController: UIViewController {

    private let userLogin = "login"
    private let userPassword = "pass"
    
    @IBOutlet var logIn: UITextField?
    @IBOutlet var password: UITextField?
    @IBOutlet var logInButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton?.layer.cornerRadius = 5
        logInButton?.clipsToBounds = true
        
    }
    
    
    @IBAction func logInTap(_ sender: UIButton) {
        if logIn?.text == userLogin && password?.text == userPassword {
            let alert = UIAlertController(title: "Success", message: "Login successful!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Opps..", message: "Incorrect login or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    

}

