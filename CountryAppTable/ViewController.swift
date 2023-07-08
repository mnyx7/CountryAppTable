//
//  ViewController.swift
//  CountryAppTable
//
//  Created by Minaya Yagubova on 28.01.23.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var pod: LottieAnimationView!
    
    @IBOutlet weak var loader: LottieAnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pod.loopMode = .loop
        pod.play()
        loader.isHidden = true
    }


    @IBAction func buttonEnter(_ sender: Any) {
        
        if let email = email.text,
           let password = password.text,
           !email.isEmpty, !password.isEmpty
        {
            if password.count >= 5 && password.count <= 10{
                let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(CountryListController.self)") as! CountryListController
                loader.loopMode = .loop
                loader.isHidden = false
                pod.isHidden = true
                loader.play()
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.navigationController?.show(controller, sender: nil)
                }
            } else{
                print("Wrong Password")
            }
        } else{
                print("Sehv melumat daxil etdiniz, tekrar yoxlayin")

            }
        }
    }

