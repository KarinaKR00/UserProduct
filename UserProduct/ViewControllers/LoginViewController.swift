//
//  ViewController.swift
//  UserProduct
//
//  Created by Карина on 19.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var userName = "Karina"
    private var passwodName = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if guard let welcomeVC = segue.destination as? WelcomeViewController
                welcomeVC.user = userName
        } else if guard let navigationVC = segue.destination as? WelcomeViewController
                    
           
        }
        
       
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
        if nameTF.text == userName, passwordTF.text == passwodName {
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcome", sender: nil)
    }
  
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
// MARK: - Alert

    @IBAction func fogotNameAlert(_ sender: UIButton) {
        let alertName = UIAlertController(
            title: "Oops!",
            message: "Your name is \(userName)",
            preferredStyle: .alert)
        let okButton = UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil)
        alertName.addAction(okButton)
        present(alertName, animated: true, completion: nil)
    }
    
    @IBAction func fogotPasswod(_ sender: UIButton) {
        let alertPasswod = UIAlertController(
            title: "Oops!",
            message: "Your passwod is \(passwodName)",
            preferredStyle: .alert)
        let okButton = UIAlertAction(
            title: "Ok",
            style:.default,
            handler: nil)
        alertPasswod.addAction(okButton)
        present (alertPasswod, animated: true, completion: nil)
    }
    
 private func showAlert(title: String, message: String, textField: UITextField? = nil) {
     let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
  // Хотела тут создать другой алерт с actionsheet, но что-то мои способы не получались, поэтому оставила как есть
    
    


