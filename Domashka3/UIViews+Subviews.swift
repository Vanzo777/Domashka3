//
//  UIViews+Subviews.swift
//  Domashka3
//
//  Created by Иван Федосеев on 03.04.2024.
//

import UIKit

extension UIView{
    func addSubviews(_ views:UIView...){
        views.forEach({addSubview($0) })
    }
}
