//
//  HomeViewController.swift
//  Ofo
//
//  Created by 王雨 on 2017/12/20.
//  Copyright © 2017年 stephen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var arrowBtn: UIButton!
    @IBOutlet weak var panelView: UIView!
    //面板展开状态
    var isPanelCollapsed = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panelView.layer.cornerRadius = view.frame.size.width
        // Do any additional setup after loading the view.
    }
    //MARK: 根据状态决定面板折叠还是展开
    @IBAction func arrowBtnTap(_ sender: UIButton) {
        movePanelView()
    }
    
    func movePanelView() {
        let deltaY = panelView.frame.size.height/3.5
        UIView.animate(withDuration: 0.3) {
            if self.isPanelCollapsed {
                self.arrowBtn.setImage(UIImage.init(named: "arrowup"), for: .normal)
                self.panelView.transform = CGAffineTransform(translationX: 0, y: deltaY)
            } else {
                self.arrowBtn.setImage(UIImage.init(named: "arrowdown"), for: .normal)
                //回到原来的位置
                self.panelView.transform = .identity
            }
        }
        isPanelCollapsed = !isPanelCollapsed
    }


}
