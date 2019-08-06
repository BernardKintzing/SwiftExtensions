//
//  Created by Bernard Kintzing on 7/11/19.
//  Copyright © 2019 Bernard Kintzing. All rights reserved.
//

import Foundation

extension Date {
    /*
     Easy calls for commom times of date
     
     let sod = Date.startOfDay
     let eod = Date.endOfDay
     let hours = Date.hours
     */
    static var startOfDay: Date { return Date().startOfDay }
    static var endOfDay: Date { return Date().endOfDay }
    static var hours: [Date] { return Date().getHours() }
    
    var startOfDay: Date {
        return Calendar.current.date(byAdding: .hour, value: -12, to: noon)!
    }
    
    var endOfDay: Date {
        return Calendar.current.date(byAdding: .hour, value: 12, to: noon)!
    }
    
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    
    func getHours() -> [Date] {
        var hours = [Date]()
        
        for index in -12...12 {
            hours.append(Calendar.current.date(byAdding: .hour, value: index, to: noon)!)
        }
        
        return hours
    }
    
}
