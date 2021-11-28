//
//  CatFactsCell.swift
//  CatsFacts
//
//  Created by Sylwia Markes on 28/11/2021.
//

import UIKit

class CatFactsCell: UITableViewCell {
    typealias IsFavouriteButtonAction = () -> Void
    
    @IBOutlet var factsLabel: UILabel!
    @IBOutlet var factNrLabel: UILabel!
    @IBOutlet var isFavouriteButton: UIButton!
    
    var isFavouriteButtonAction: IsFavouriteButtonAction?
    
    @IBAction func isFavouriteButtonTriggered(_ sender: UIButton) {
        isFavouriteButtonAction?()
        }
}
