//
//  ViewController.swift
//  clone-coding
//
//  Created by 김민성 on 2021/07/08.
//

import UIKit


class MyViewController: UIViewController {

    convenience init(title:String, bgColor: UIColor) {
        self.init()
        
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
    }


}

