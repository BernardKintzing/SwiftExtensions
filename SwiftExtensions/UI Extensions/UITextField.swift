//
//  Created by Bernard Kintzing on 7/5/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import UIKit

extension UITextField {
    
    /*
     Standard configuration options
     */
    func configure(color: UIColor, font: UIFont, cornerRadius: CGFloat, borderColor: UIColor?, backgroundColor: UIColor, borderWidth: CGFloat?) {
        if let borderWidth = borderWidth {
            self.layer.borderWidth = borderWidth
        }
        if let borderColor = borderColor {
            self.layer.borderColor = borderColor.cgColor
        }
        self.layer.cornerRadius = cornerRadius
        self.font = font
        self.textColor = color
        self.backgroundColor = backgroundColor
    }
}
