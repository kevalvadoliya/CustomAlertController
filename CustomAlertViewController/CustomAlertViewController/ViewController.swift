//
//  ViewController.swift
//  CustomAlertViewController
//
//  Created by Keval Vadoliya on 08/12/19.
//  Copyright © 2019 Keval Vadoliya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func showAlertAction(_ sender: UIButton) {
        showAlertController()
    }
    
    private func showAlertController() {
        let alertView = UIAlertController(style: .alert)
        alertView.setViewController(image: #imageLiteral(resourceName: "alert"), title: "Alert", message: "Message Content")
        alertView.addAlertAction(title: "Cancel") { (_) in
        }
        alertView.addAlertAction(title: "OK") { (_) in
        }
        present(alertView, animated: true, completion: nil)
    }

}
