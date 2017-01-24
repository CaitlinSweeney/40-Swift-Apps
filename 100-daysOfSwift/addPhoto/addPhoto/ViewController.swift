//
//  ViewController.swift
//  addPhoto
//
//  Created by caitlin sweeney on 1/5/17.
//  Copyright © 2017 caitlin sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // Mark : View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Mark : Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // Mark : Interactions

    @IBAction func tapCameraButton(_ sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    // Mark : When User Selects Photo
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }

}

