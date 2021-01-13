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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}
extension ViewController: EKEventEditViewDelegate {
    
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
        <#code#>
    }
}
