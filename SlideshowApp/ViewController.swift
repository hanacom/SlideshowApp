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
    
    
    @IBAction func modorubutton(_ sender: Any) {
        if imagenumber == 1 {
            imagenumber = 3
        }else{
            imagenumber -= 1
        }
        showImage()
    }
    
    
    
    var timer: Timer!
    var timer_sec:Int = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @objc func updateTimer(timer: Timer) {
        self.timer_sec += 1
        self.timerLabel.text = String(timer_sec)
    }
    
    
    @IBAction func saiseibutton(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 1,target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
        }
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

