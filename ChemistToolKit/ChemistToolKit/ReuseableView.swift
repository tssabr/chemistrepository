//
//  ReuseableView.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/12/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import UIKit

protocol ReusableView: class {}


extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
