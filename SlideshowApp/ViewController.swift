//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 増田華子 on 2018/01/30.
//  Copyright © 2018年 hanako.masuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imagenumber: Int = 1
    let image1: UIImage? = UIImage(named: "dog1")
    let image2: UIImage? = UIImage(named: "dog2")
    let image3: UIImage? = UIImage(named: "dog3")
    
    
    func showImage() {
        switch imagenumber {
        case 1:
            imageView.image = image1
        case 2:
            imageView.image = image2
        case 3:
            imageView.image = image3
        default:
            imageView.image = image1
        }
    }

    
    
    @IBAction func susumubutton(_ sender: Any) {
        
        if imagenumber == 3 {
            
            imagenumber = 1
        }else{
            imagenumber += 1
        }
        
        
        showImage()
        
}
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "dog1.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

