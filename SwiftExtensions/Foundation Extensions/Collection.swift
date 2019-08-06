//
//  Created by Bernard Kintzing on 6/9/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import Foundation

extension Collection {
    /*
    Safe return for requesting index
    If there is no value for requested index, function function returns nil instead of outOfBoundsException
     */
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
