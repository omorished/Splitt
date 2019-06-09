//
//  ImagePresentationVC.swift
//  Splitt
//
//  Created by Os! on 09/06/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {
    
    //connections
    @IBOutlet weak var itemImageView: UIImageView!
    
    //variables
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
            itemImageView.image = image
    }




}

