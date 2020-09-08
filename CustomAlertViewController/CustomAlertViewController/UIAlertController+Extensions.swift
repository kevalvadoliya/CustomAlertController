//
//  UIAlertController+Extensions.swift
//  CustomAlertViewController
//
//  Created by Keval Vadoliya on 08/12/19.
//  Copyright © 2019 Keval Vadoliya. All rights reserved.
//

import UIKit

extension UIAlertController {

    convenience init(style: UIAlertController.Style, title: String? = nil, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: style)
    }

    func addAlertAction(title: String, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
    }

    func setViewController(image: UIImage, title: String, message: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController =
            storyboard.instantiateViewController(withIdentifier: "CustomViewController") as? CustomViewController else {
                return
        }
        viewController.alertImage = image
        viewController.titleText = title
        viewController.messageText = message
        setValue(viewController, forKey: "contentViewController")
    }

}
