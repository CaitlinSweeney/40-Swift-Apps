//
//  ViewController.swift
//  dailyUI01
//
//  Created by caitlin sweeney on 2/7/17.
//  Copyright © 2017 caitlin sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()

    }
    // MARK: Outlets
    
    
    // MARK: Functions
    func assignbackground(){
        let background = UIImage(named: "BeachBG")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    

}

