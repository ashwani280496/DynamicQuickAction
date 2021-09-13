//
//  ShortcutHelper.swift
//  Nestap
//
//  Created by Ashwani Shakya on 13/09/21.
//  Copyright © 2021 Nestap. All rights reserved.
//

import UIKit


/**
 This class have basic helper methods for managing `UIApplicationShortcutItem` for the application
 */
class ShortcutHelper:NSObject {
    
    
    
    private enum ApplicationShortcutItemType:String {
        case addPayment     = "QuickAction.AddPayment"
        case raiseTicket = "QuickAction.RaiseTicket"
    }
    
    private  enum ApplicationShortcutItemTitle:String {
        case addPayment     = "Add Payment"
        case raiseTicket = "Raise Ticket"
    }
    
    private enum ApplicationShortcutItemSubTitle:String {
        case addPayment     = "For Electricity"
        case raiseTicket = "For Plumber"
    }
    
    
    
    
    /// adds shortcuts to the `UIApplicationShortcutItem` dynamically
    static func addQuickActions(){
        let addPayment = UIApplicationShortcutItem(type: ApplicationShortcutItemType.addPayment.rawValue, localizedTitle: ApplicationShortcutItemTitle.addPayment.rawValue, localizedSubtitle: ApplicationShortcutItemSubTitle.addPayment.rawValue, icon: UIApplicationShortcutIcon(type: .add))
        let raiseTicket = UIApplicationShortcutItem(type: ApplicationShortcutItemType.raiseTicket.rawValue, localizedTitle: ApplicationShortcutItemTitle.raiseTicket.rawValue, localizedSubtitle: ApplicationShortcutItemSubTitle.raiseTicket.rawValue,icon: UIApplicationShortcutIcon(type: .add))
        UIApplication.shared.shortcutItems = [addPayment,raiseTicket]

    }
    
    static func handleShortcut(shortcutItem:UIApplicationShortcutItem){
        guard let actionType = ApplicationShortcutItemType(rawValue: shortcutItem.type) else { return }
        
        switch actionType {
            case .addPayment:
                print(actionType.rawValue)
            case .raiseTicket:
                print(actionType.rawValue)
        }
    }
    
}
