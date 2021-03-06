//
//  ConversationStartViewController.swift
//  SampleApp
//
//  Created by Maelle Saiag on 06/11/2020.
//  Copyright © 2020 Apizee. All rights reserved.
//

import UIKit
import Eureka

class ConversationStartViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
             overrideUserInterfaceStyle = .light
         }
        
        form = Form()
        
        form
            +++ Section()
        
            <<< ButtonRow() {
                $0.title = "Conversation basic"
                $0.presentationMode = .segueName(segueName: "ConversationViewController", onDismiss: nil)
            }
        
            <<< ButtonRow() {
                $0.title = "Media device selection"
                $0.presentationMode = .segueName(segueName: "ConversationMediaDeviceSelectionViewController", onDismiss: nil)
            }
        
            <<< ButtonRow() {
                $0.title = "Media muting"
                $0.presentationMode = .segueName(segueName: "ConversationMuteViewController", onDismiss: nil)
            }
        
            <<< ButtonRow() {
                $0.title = "Advanced publish subscribe"
                $0.presentationMode = .segueName(segueName: "ConversationAdvancedPublishSubscribeViewController", onDismiss: nil)
            }
        
            <<< ButtonRow() {
                $0.title = "Join and leave"
                $0.presentationMode = .segueName(segueName: "ConversationJoinLeaveViewController", onDismiss: nil)
            }
    }
}
