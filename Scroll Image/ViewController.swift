//
//  ViewController.swift
//  Scroll Image
//
//  Created by Mathivathani Murugesan on 18/02/20.
//  Copyright © 2020 Yudhishta Dhayalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    //    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var scrollView : UIScrollView!
    
    var imagesss : [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0..<imagesss.count {
            
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named : imagesss[index])
            self.scrollView.addSubview(imgView)
            
            
            //            let imgView = UIImageView(frame: frame)
            //            imageViewOutlet.image = UIImage(named : imagesss[index])
            //            self.scrollView.addSubview(imageViewOutlet)
            
        }
        
        scrollView.contentSize = CGSize(width : scrollView.frame.size.width * CGFloat(imagesss.count), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
    }
    
    
}

