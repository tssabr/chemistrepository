//
//  periodicTableOfElementsData.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/9/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import Foundation


class elements {
    static let instance = elements()
    
    var elementArray: Array<element> = []
    
    func loadElements() {
        let path = Bundle.main.path(forResource: "ptdata2", ofType: "csv")!
        
        do {
            
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            
            for row in rows {
                //atomicNumber, symbol, name, atomicMass, cpkColorHex, electronConfiguration, electronegativityPauling, atomicRadiusPM, ionRadiusInPM, vanderWaalsRadiusInPM, IE-1inkJ/mol, EAinkJ/mol, oxidationStates, standardStates, bondingType, meltingPointInK, boilingPointInK, densityIng/mL, let metalorNonmetal, yearDiscovered
                let atomicNumber = Int(row["atomicNumber"]!)!
                let symbol = row["symbol"]!
                var name = row["name"]!
                var atomicMass = row["atomicMass"]! as NSString
                var cpkColorHex = row["cpkColorHex"]!
                let electronConfig = row["electrionConfiguration"]!
                var electronegativity = row["electronegativityPauling"]!
                var atomicRadiusPM = row["atomicRadiusOM"]!
                var ionRadiusInPM = row["ionRadiusInPM"]!
                var vanderWaals = row["vanderWaalsRadiusInPM"]!
                var ie1inkjmol = row["IE-1inkJ/mol"]!
                var eainkjmol = row["EAinkJ/mol"]!
                var standardStates = row["standardStates"]!
                var bondingType = row["bondingType"]!
                var meltingPoint = row["meltingPointInK"]!
                var boilingPoint = row["boilingPointInK"]!
                var density = row["densityIng/mL"]!
                let metalorNonmetal = row["metalorNonmetal"]!
                var yearDiscovered = row["yearDiscovered"]!
                
                let ele = element(atomicNumber: atomicNumber, symbol: symbol, name: name, atomicMass: atomicMass, cpk: cpkColorHex, elecCon: electronConfig, elecNeg: electronegativity as NSString, atomicRad: atomicRadiusPM as NSString, ionRadius: ionRadiusInPM as NSString, vanderWaals: vanderWaals as NSString, IE1: ie1inkjmol as NSString, EAi: eainkjmol as NSString, standard: standardStates, bonding: bondingType, meltingPoint: meltingPoint as NSString, boilingPoint: boilingPoint as NSString, density: density as NSString, metalNonMetal: metalorNonmetal, year: yearDiscovered)
                
            }
            
        } catch let err as NSError {
            
            print(err.debugDescription)
        }
    }
}
