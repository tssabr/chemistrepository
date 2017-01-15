//
//  NibLoadableView.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/12/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}
