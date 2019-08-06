//
//  Created by Bernard Kintzing on 7/5/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import UIKit

extension UIImage {
    
    /*
     Returned a scaled version of the image equal in size to sizeChange
     */
    func scale(sizeChange:CGSize) -> UIImage {
        
        let hasAlpha = true
        let scale: CGFloat = 0.0
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        self.draw(in: CGRect(origin: CGPoint.zero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage!
    }
    
    /*
     Returned a scaled version of the image based on percentage
     */
    func scale(withPercentage percentage: CGFloat) -> UIImage? {
        let cgSize = CGSize(width: size.width * percentage, height: size.height * percentage)

        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen

        UIGraphicsBeginImageContextWithOptions(cgSize, !hasAlpha, scale)
        self.draw(in: CGRect(origin: CGPoint.zero, size: cgSize))

        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage
    }
    
    static func from(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
