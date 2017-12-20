//
//  UIViewLayerHelper.swift
//  Ofo
//
//  Created by 王雨 on 2017/12/20.
//  Copyright © 2017年 stephen. All rights reserved.
//  圆角的扩展

import UIKit
//可预览效果
@IBDesignable
class ArcView: UIView {
    
}

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    //阴影圆角
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    //阴影偏移
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    //阴影色
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let cgcolor = layer.shadowColor {
                return UIColor(cgColor:cgcolor)
            } else {
                return nil
            }
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    
    //阴影透明度
    @IBInspectable
    var shadowOpacity: Float {
        get {
           return layer.shadowOpacity
        }
        set {
           layer.shadowOpacity = newValue
        }
    }
    
   
}

