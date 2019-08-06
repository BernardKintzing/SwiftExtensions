//
//  Created by Bernard Kintzing on 6/13/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import Foundation

extension StringProtocol {
    /*
    Return an array words from the string
    
    let words = sentence.words
    */
    var words: [SubSequence] {
        return split{ !$0.isLetter }
    }
}
