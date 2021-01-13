//
//  ViewController.swift
//  CalendarExample
//
//  Created by Sebastian Sciuba on 13/01/2021.
//

import UIKit
import EventKit
import EventKitUI

class ViewController: UIViewController {
    
    let eventStore = EKEventStore()
    var time = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
//        eventStore.requestAccess( to: EKEntityType.event, completion:{(granted, error) in
//            DispatchQueue.main.async {
//                if (granted) && (error == nil) {
//                    let event = EKEvent(eventStore: self.eventStore)
//                    event.title = "Keynote Apple"
//                    event.startDate = self.time
//                    event.url = URL(string: "https://apple.com")
//                    event.endDate = self.time
//
//                    let eventController = EKEventEditViewController()
//                    eventController.event = event
//                    eventController.eventStore = self.eventStore
//                    eventController.editViewDelegate = self
//
//                    self.present(eventController, animated: true, completion: nil)
//
//                }
//            }
//        })
        
    }
    
}
extension ViewController: EKEventEditViewDelegate {
    
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
        
        controller.dismiss(animated: true, completion: nil)
    }
}


//clone - https://medium.com/swift-productions/add-an-event-to-the-calendar-xcode-12-swift-5-3-35b8bf149859
