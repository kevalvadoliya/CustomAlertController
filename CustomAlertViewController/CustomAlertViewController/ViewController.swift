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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        showAlertController()
    }
    
    func showAlertController() {
        var alertView = UIAlertController(style: .alert)
        alertView = setAlertContentView(alertController: alertView)
        alertView.addAlertAction(title: "Cancel") { (_) in
        }
        alertView.addAlertAction(title: "OK") { (_) in
        }
        self.present(alertView, animated: true, completion: nil)
    }
    
    func setAlertContentView(alertController: UIAlertController) -> UIAlertController {
        let image = #imageLiteral(resourceName: "alert")
        let title = "Alert"
        let message = "Message"
        alertController.setViewController(image: image, title: title, message: message)
        return alertController
    }

}
