//
//  ViewController.swift
//  Ofo
//
//  Created by 王雨 on 2017/12/20.
//  Copyright © 2017年 stephen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var panelView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        panelView.layer.cornerRadius = view.frame.size.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

