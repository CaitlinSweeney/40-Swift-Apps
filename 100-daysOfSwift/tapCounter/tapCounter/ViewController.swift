//
//  ViewController.swift
//  tapCounter
//
//  Created by Caitlin Sweeney on 12/12/16.
//  Copyright © 2016 Caitlin Sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapButton: UIButton!
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Outlets

    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    // MARK: - Interactions
    
    @IBAction func tapButton(_ sender: UIButton) {
      count = count + 1
      countLabel.text = String(count)
      print(count)
    }
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
     count = 0
     countLabel.text = "0"
    }
    
    @IBAction func holdTapButton(_ sender: UILongPressGestureRecognizer) {
     count = count + 1
     countLabel.text = String(count)
     print(count)
    }
}

