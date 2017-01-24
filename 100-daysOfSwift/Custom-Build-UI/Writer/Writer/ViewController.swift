//
//  ViewController.swift
//  Writer
//
//  Created by Caitlin Sweeney on 12/13/16.
//  Copyright © 2016 Caitlin Sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
//        NotificationCenter.self
        print("\(UserDefaults.standard.bool(forKey: <#T##String#>))")
    }

    // MARK: - Outlets
    
    @IBOutlet weak var textView: UITextView!
    let userSettings = UserDefaults.standard.bool(forKey: <#T##String#>)
    
}

