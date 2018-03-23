//
//  ViewController.swift
//  CoverImageView
//
//  Created by gavinning on 2018/3/23.
//  Copyright © 2018年 gavinning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cover = CoverImageView(cover: "cover", frame: view.frame)
        view.addSubview(cover)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

