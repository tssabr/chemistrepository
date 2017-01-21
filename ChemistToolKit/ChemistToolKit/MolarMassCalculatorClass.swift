//
//  MolarMassCalculatorClass.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/16/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import Foundation


class MolarMassCalculatorClass {
    static let instance = MolarMassCalculatorClass()
    //private vars for element, molar mass, number of specific element, entered text, 
    private var _numberOfCurrentElement: Double = 0.0
    private var _eleName: String = ""
    private var _enteredText: NSString = ""
    private var _currentNumber: Double = 0.0
    
    //public vars
    var numberOfCurrentElement: Double {
        return _numberOfCurrentElement
    }
    
    var eleName: String {
        return _eleName
    }
    
    var enteredText: NSString {
        return _enteredText
    }
    
    var currentNumber: Double {
        return _currentNumber
    }
    
    //funcs for addnumber, subtractnumber, enternumber, update number, clear, calculate
    
    
    func addNumber(prevNum: Double) -> Double {
        if prevNum == 0 {
            _currentNumber = 1.0
            return 1.0
        } else {
            _currentNumber = prevNum + 1.0
            return prevNum + 1.0
        }
    }
    
    func subNumber(prevNum: Double) -> Double {
        if prevNum == 0 {
            _currentNumber = 0.0
            return 0.0
        } else {
            _currentNumber = prevNum - 1.0
            return prevNum - 1.0
        }
    }
    
    func enterNumber(enteredString: NSString) -> Double {
        if enteredString == "" {
            _currentNumber = 0.0
            return 0.0
        } else {
            _currentNumber = enteredString.doubleValue
            return enteredString.doubleValue
        }
    }
    
    func clear() -> Double {
        _currentNumber = 0.0
        return _currentNumber
    }
}
