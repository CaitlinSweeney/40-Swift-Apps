//
//  NewGroceryViewControllerViewController.swift
//  basicTableView
//
//  Created by Caitlin on 1/9/17.
//  Copyright © 2017 caitlin sweeney. All rights reserved.
//

import UIKit

class NewGroceryViewControllerViewController: UIViewController {

    // MARK: View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGroceryTextView.becomeFirstResponder()
    }

    // MARK: Outlets
    
    @IBOutlet weak var newGroceryTextView: UITextView!
    
    
    // MARK: Interactions

    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        modelData.tableData.append(newGroceryTextView.text)
        _ = self.navigationController?.popToRootViewController(animated: true)
    }
}
