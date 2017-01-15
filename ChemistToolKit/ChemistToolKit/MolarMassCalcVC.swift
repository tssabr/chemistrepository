//
//  ViewController.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/9/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import UIKit

class MolarMassCalcVC: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var formula: UILabel!
    @IBOutlet weak var molarMass: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var periodicTable = elements.instance
    var inSearchMode = false
    var filteredElements = [elements]()
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchBar.delegate = self
        
        periodicTable.loadElements()
        let nib = UINib(nibName: "ElementCollectionCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ElementCollectionCell")
        collectionView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension MolarMassCalcVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //put in content to allow search function
        
        if searchBar.text == nil || searchBar.text == "" {
            
            inSearchMode = false
            collectionView.reloadData()
            view.endEditing(true)
            
        } else {
            
            inSearchMode = true
            
            //let capit = searchBar.text!.capitalized
            //filteredElements = periodicTable.elementArray.filter({$0.name.range(of: capit) != nil})
            collectionView.reloadData()
            
        }
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //dismiss keyboard
        view.endEditing(true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        //dismiss keyboard and delete search text
        view.endEditing(true)
    }
}

extension MolarMassCalcVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return periodicTable.elementArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //this creates all of the data cells
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ElementCollectionCell", for: indexPath) as? ElementCollectionCell {
            cell.configureCell(element: periodicTable.elementArray[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //prepare for segue that shows +, - number of element in molecule
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 60)
    }
}
