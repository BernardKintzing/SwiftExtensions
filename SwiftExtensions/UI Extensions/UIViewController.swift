//
//  Created by Bernard Kintzing on 7/5/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import UIKit

extension UIViewController {
    /*
    Present an error message to the user
     */
    func presentAlert(title: String, message: String?) {
        let message = message ?? "Unknown"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    /*
    Hide the keyboard when screen is pressed
    */
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

