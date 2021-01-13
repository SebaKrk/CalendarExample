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
        
        view.backgroundColor = .systemBackground
        setUpItemBarController()
    
    }
    func setUpItemBarController() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddButton))
    }
    @objc func handleAddButton() {
        print("add")
    }
    
}
extension ViewController: EKEventEditViewDelegate {
    
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
        
        controller.dismiss(animated: true, completion: nil)
    }
}


//clone - https://medium.com/swift-productions/add-an-event-to-the-calendar-xcode-12-swift-5-3-35b8bf149859
