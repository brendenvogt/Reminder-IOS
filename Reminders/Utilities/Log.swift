//
//  Log.swift
//  Reminders
//
//  Created by Brenden Vogt on 8/10/21.
//

import Foundation

public func log(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
    print(items, separator: separator, terminator: terminator)
    #endif
}
