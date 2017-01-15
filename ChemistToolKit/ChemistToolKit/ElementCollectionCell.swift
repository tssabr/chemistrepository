//
//  ElementCollectionCell.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/10/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import UIKit

class ElementCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var viewBackgroundColor: UIView!
    @IBOutlet weak var atomicSymbol: UILabel!
    @IBOutlet weak var atomicNumber: UILabel!
    @IBOutlet weak var atomicName: UILabel!
    
    var element: element!
    
    func configureCell(element: element) {
        self.element = element
        
        atomicSymbol.text = element.symbol
        atomicNumber.text = "\(element.atomicNumber)"
        atomicName.text = element.name
    
        switch element.metalOrNonmetal.rawValue {
        case "noble gas":
            viewBackgroundColor.backgroundColor = UIColor.blue
        case "akali metal":
            viewBackgroundColor.backgroundColor = UIColor.brown
        case "alkaline metal":
            viewBackgroundColor.backgroundColor = UIColor.lightGray
        case "metalloid":
            viewBackgroundColor.backgroundColor = UIColor.cyan
        case "halogen":
            viewBackgroundColor.backgroundColor = UIColor.orange
        case "metal":
            viewBackgroundColor.backgroundColor = UIColor.gray
        case "transition metal":
            viewBackgroundColor.backgroundColor = UIColor.green
        case "lanthanoid":
            viewBackgroundColor.backgroundColor = UIColor.purple
        case "actinoid":
            viewBackgroundColor.backgroundColor = UIColor.magenta
        default:
            viewBackgroundColor.backgroundColor = UIColor.yellow
        }
    }
    
    
}
