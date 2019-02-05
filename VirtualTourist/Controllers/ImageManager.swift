//
//  ImageManager.swift
//  VirtualTourist
//
//  Created by Raghad Almatrodi on 2/5/19.
//  Copyright © 2019 raghad almatrodi. All rights reserved.
//

import UIKit

class ImageManager: UIViewController {
var image: UIImage?
    @IBOutlet weak var share: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
imageView.image = image
    }
    
    
     
    @IBAction func share(_ sender: Any) {
        if share.isEnabled{
            let activityViewController = UIActivityViewController(activityItems:[imageView] , applicationActivities: nil)
            present(activityViewController, animated: true)
            activityViewController.completionWithItemsHandler = {
                (activity, completed, items, error) in
                if (completed){
                   return
                }
            }
            
        }
    }
   

}
