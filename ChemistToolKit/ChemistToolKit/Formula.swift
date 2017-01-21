//
//  Formula.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/17/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import Foundation


class Formula {
    static let instance = Formula()
    //Private Vars
    //public vars
    var formulaString: String = ""
    var molarMass: Double = 0.0
    var molarMassArray: [Double] = []
    var formulaArray: [String] = []
    
    func appendFormulaString(incEleSymbol: String,  incEleNumb: Double) {
        formulaArray.append(incEleSymbol)
        formulaArray.append("\(incEleNumb)")
    }
    
    func appendMolarMass(incEleMass: Double, incEleNumb: Double) {
        let newValue = incEleMass * incEleNumb
        molarMassArray.append(newValue)
    }
    
    func calculateMolarMass() {
        if molarMassArray.count == 0 {
            molarMass = 0.0
        } else {
            for mass in molarMassArray {
                molarMass += mass
            }
        }
    }
    
    func createFormulaString() {
        if formulaArray.count == 0 {
            print("the formulaArray is empty cannot create string")
        } else {
            for symbol in formulaArray {
                if symbol == "1" {
                    formulaString.append("")
                } else {
                    formulaString.append(symbol)
                }
            }
        }
    }
    
    func deleteElement() {
        if formulaArray.count == 0 {
            print("cannot delete anything")
        } else {
        formulaArray.removeLast(2)
        }
        if molarMassArray.count == 0 {
            print("cannot delete anything")
        } else {
            molarMassArray.removeLast()
        }
    }
    
}
