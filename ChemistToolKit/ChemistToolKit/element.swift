//
//  element.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/9/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import Foundation

enum bgColorMetalorNonmetal: String {
    case nonmetal = "nonmetal"
    case nobleGas = "noble gas"
    case alkaliMetal = "alkali metal"
    case alkalineMetal = "alkaline metal"
    case metalloid = "metalloid"
    case halogen = "halogen"
    case metal = "metal"
    case transitionMetal = "transition metal"
    case lanthanoid = "lanthanoid"
    case actinoid = "actinoid"
}


struct element {
    //atomicNumber, symbol, name, atomicMass, cpkColorHex, electronConfiguration, electronegativityPauling, atomicRadiusPM, ionRadiusInPM, vanderWaalsRadiusInPM, IE-1inkJ/mol, EAinkJ/mol, oxidationStates, standardStates, bondingType, meltingPointInK, boilingPointInK, densityIng/mL, metalorNonmetal, yearDiscovered
    
    //variables and getters
    
    fileprivate var _atomicNumber: Int!
    fileprivate var _symbol: String!
    fileprivate var _name: String!
    fileprivate var _atomicMass: NSString!
    fileprivate var _cpkColorHex: String!
    fileprivate var _electronConfiguration: String!
    fileprivate var _electronegativityPauling: NSString!
    fileprivate var _atomicRadiusPM: NSString!
    fileprivate var _ionRadiusInPM: NSString!
    fileprivate var _vanderWaalsRadiusInPM: NSString!
    fileprivate var _IE1inkJmol: NSString!
    fileprivate var _EAinkJmol: NSString!
    fileprivate var _standardStates: String!
    fileprivate var _bondingType: String!
    fileprivate var _meltingPointInK: NSString!
    fileprivate var _boilingPointInK: NSString!
    fileprivate var _densityIngmL: NSString!
    fileprivate var _metalorNonmetal: bgColorMetalorNonmetal!
    fileprivate var _yearDiscovered: String!
    
    var atomicNumber: Int {
        return _atomicNumber
    }
    var symbol: String {
        return _symbol
    }
    var name: String {
        return _name
    }
    var atomicMass: NSString {
        return _atomicMass
    }
    var cpkColorHex: String {
        return _cpkColorHex
    }
    var electronConfiguration: String {
        return _electronConfiguration
    }
    var electronegativityPauling: NSString {
        return _electronegativityPauling
    }
    var atomicRadiusPM: NSString {
        return _atomicRadiusPM
    }
    var ionRadiusInPM: NSString {
        return _ionRadiusInPM
    }
    var vanderWaalsRadiusInPM: NSString {
        return _vanderWaalsRadiusInPM
    }
    var IE1inkJmol: NSString {
        return _IE1inkJmol
    }
    var EAinkJmol: NSString {
        return _EAinkJmol
    }
    var standardState: String {
        return _standardStates
    }
    var bondingType: String {
        return _bondingType
    }
    var meltingPointinK: NSString {
        return _meltingPointInK
    }
    var boilingPointinK: NSString {
        return _boilingPointInK
    }
    var densityIngml: NSString {
        return _densityIngmL
    }
    var metalOrNonmetal: bgColorMetalorNonmetal {
        return _metalorNonmetal
    }
    var yearDiscovered: String {
        return _yearDiscovered
    }
    //atomicNumber, symbol, name, atomicMass, cpkColorHex, electronConfiguration, electronegativityPauling, atomicRadiusPM, ionRadiusInPM, vanderWaalsRadiusInPM, IE-1inkJ/mol, EAinkJ/mol, oxidationStates, standardStates, bondingType, meltingPointInK, boilingPointInK, densityIng/mL, metalorNonmetal, yearDiscovered
    init(atomicNumber: Int, symbol: String, name: String, atomicMass: NSString, cpk: String, elecCon: String, elecNeg: NSString, atomicRad: NSString, ionRadius: NSString, vanderWaals: NSString, IE1: NSString, EAi: NSString, standard: String, bonding: String, meltingPoint: NSString, boilingPoint: NSString, density: NSString, metalNonMetal: Int, year: String) {
        self._atomicNumber = atomicNumber
        self._symbol = symbol
        self._name = name
        self._atomicMass = atomicMass
        self._cpkColorHex = cpk
        self._electronConfiguration = elecCon
        self._electronegativityPauling = elecNeg
        self._atomicRadiusPM = atomicRad
        self._ionRadiusInPM = ionRadius
        self._vanderWaalsRadiusInPM = vanderWaals
        self._IE1inkJmol = IE1
        self._EAinkJmol = EAi
        self._standardStates = standard
        self._bondingType = bonding
        self._meltingPointInK = meltingPoint
        self._boilingPointInK = boilingPoint
        self._densityIngmL = density
        //self._metalorNonmetal = metalNonMetal
        self._yearDiscovered = year
        switch metalNonMetal {
        case 2:
            self._metalorNonmetal = bgColorMetalorNonmetal.nobleGas
        case 3:
            self._metalorNonmetal = bgColorMetalorNonmetal.alkaliMetal
        case 4:
            self._metalorNonmetal = bgColorMetalorNonmetal.alkalineMetal
        case 5:
            self._metalorNonmetal = bgColorMetalorNonmetal.metalloid
        case 6:
            self._metalorNonmetal = bgColorMetalorNonmetal.halogen
        case 7:
            self._metalorNonmetal = bgColorMetalorNonmetal.metal
        case 8:
            self._metalorNonmetal = bgColorMetalorNonmetal.transitionMetal
        case 9:
            self._metalorNonmetal = bgColorMetalorNonmetal.lanthanoid
        case 10:
            self._metalorNonmetal = bgColorMetalorNonmetal.actinoid
        default:
            self._metalorNonmetal = bgColorMetalorNonmetal.nonmetal
        }
    }
    
}
