//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Liron Ezer on 09/03/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
