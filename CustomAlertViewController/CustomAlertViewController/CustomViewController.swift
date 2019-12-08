//
//  CustomViewController.swift
//  CustomAlertViewController
//
//  Created by Keval Vadoliya on 08/12/19.
//  Copyright © 2019 Keval Vadoliya. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    var alertImage = UIImage()
    var titleText = String()
    var messageText = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
        // Do any additional setup after loading the view.
    }

    private func setValues() {
        imageView.image = alertImage
        titleLabel.text = titleText
        messageLabel.text = messageText
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        preferredContentSize.height = messageLabel.frame.size.height + messageLabel.frame.origin.y + 30
    }

}
