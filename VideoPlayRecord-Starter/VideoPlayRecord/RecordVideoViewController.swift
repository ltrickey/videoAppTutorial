//
//  RecordVideoViewController.swift
//  VideoPlayRecord
//
//  Created by Andy on 2/1/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import MobileCoreServices
import UIKit

class RecordVideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func startCameraFromViewController(viewController: UIViewController, withDelegate delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) -> Bool {
            if UIImagePickerController.isSourceTypeAvailable(.camera) == false {
                return false
            }
        
            var cameraController = UIImagePickerController()
            cameraController.sourceType = .camera
            cameraController.mediaTypes = [kUTTypeMovie as NSString as String]
            cameraController.allowsEditing = false
            cameraController.delegate = delegate
        
            present(cameraController, animated: true, completion: nil)
            return true
    }
  
  
  @IBAction func record(_ sender: AnyObject) {
    startCameraFromViewController(viewController: self, withDelegate: self)
    
  }
  
  
}

extension RecordVideoViewController: UIImagePickerControllerDelegate {
}

extension RecordVideoViewController: UINavigationControllerDelegate {
}
