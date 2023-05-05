//
//  ImageViewController.swift
//  project-01
//
//  Created by 정은 on 2023/05/05.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var selectLabel: UILabel!
    @IBOutlet var fullImageView: UIImageView!
    @IBOutlet var addImage: UIImageView!
    
    var imageName: String?
    var labelText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addImage.image = UIImage(named: "button-addtocart.png")
        
        if let imageName = imageName, let image = UIImage(named: imageName) {
            fullImageView.image = image
        }
        
        if let labelText = labelText {
            selectLabel.text = labelText
        }
    }
}
