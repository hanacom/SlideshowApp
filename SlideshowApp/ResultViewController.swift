//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 増田華子 on 2018/02/01.
//  Copyright © 2018年 hanako.masuda. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var imageView2: UIImageView!
    
    var image:UIImage? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if image == UIImage(named: "dog1.jpg") {
            imageView2.image = UIImage(named: "dog1.jpg")
        }
        if image == UIImage(named: "dog2.jpg") {
            imageView2.image = UIImage(named: "dog2.jpg")
        }
        if image == UIImage(named: "dog3.jpg") {
            imageView2.image = UIImage(named: "dog3.jpg")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
