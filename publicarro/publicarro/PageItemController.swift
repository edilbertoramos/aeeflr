//
//  PageItemController.swift
//  publicarro
//
//  Created by EDILBERTO DA SILVA RAMOS JUNIOR on 26/10/15.
//  Copyright © 2015 tambatech. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {
    
    // MARK: - Variables
    var itemIndex: Int = 0
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    var labelName: String = "" {
        
        didSet {
            
            if let labelTutorial = label {
                labelTutorial.text = labelName
            }
            
        }
    }
    
    var textTutorial: String = "" {
        
        didSet {
            
            if let text = textView {
                text.text = textTutorial
            }
            
        }
    }

    
    
    @IBOutlet weak var textView: UITextView!

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var contentImageView: UIImageView!
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
        label.text = labelName
        textView.text = textTutorial
    }
}

