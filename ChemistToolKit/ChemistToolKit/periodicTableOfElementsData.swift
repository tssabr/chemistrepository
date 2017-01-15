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
        let path = Bundle.main.path(forResource: "ptdatanospaces", ofType: "csv")!
        
        do {
            
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            
            for row in rows {
                //atomicNumber, symbol, name, atomicMass, cpkColorHex, electronConfiguration, electronegativityPauling, atomicRadiusPM, ionRadiusInPM, vanderWaalsRadiusInPM, IE-1inkJ/mol, EAinkJ/mol, oxidationStates, standardStates, bondingType, meltingPointInK, boilingPointInK, densityIng/mL, let metalorNonmetal, yearDiscovered
                let atomicNumber = Int(row["atomicNumber"]!)!
                let symbol = row["symbol"]!
                let name = row["name"]!  //var
                let atomicMass = row["atomicMass"]! as NSString //var
                let cpkColorHex = row["cpkColorHex"]!  //var
                let electronConfig = row["electronConfiguration"]!  //var
                let electronegativity = row["electronegativityPauling"]! //var
                let atomicRadiusPM = row["atomicRadiusPM"]!  //var
                let ionRadiusInPM = row["ionRadiusInPM"]!  //var
                let vanderWaals = row["vanderWaalsRadiusInPM"]! //var
                let ie1inkjmol = row["IE-1inkJ/mol"]! //var
                let eainkjmol = row["EAinkJ/mol"]! //var
                let standardStates = row["standardStates"]! //var
                let bondingType = row["bondingType"]! //var
                let meltingPoint = row["meltingPointInK"]! //var
                let boilingPoint = row["boilingPointInK"]! //var
                let density = row["densityIng/mL"]! //var
                let metalorNonmetal = Int(row["metalorNonmetal"]!)!
                let yearDiscovered = row["yearDiscovered"]! //var
                
                let ele = element(atomicNumber: atomicNumber, symbol: symbol, name: name, atomicMass: atomicMass, cpk: cpkColorHex, elecCon: electronConfig, elecNeg: electronegativity as NSString, atomicRad: atomicRadiusPM as NSString, ionRadius: ionRadiusInPM as NSString, vanderWaals: vanderWaals as NSString, IE1: ie1inkjmol as NSString, EAi: eainkjmol as NSString, standard: standardStates, bonding: bondingType, meltingPoint: meltingPoint as NSString, boilingPoint: boilingPoint as NSString, density: density as NSString, metalNonMetal: metalorNonmetal, year: yearDiscovered)
                elementArray.append(ele)
            }
            
        } catch let err as NSError {
            
            print(err.debugDescription)
        }
    }
}
