//
//  PokeTableViewCell.swift
//  CocoaPods
//
//  Created by Pablo Rosalvo on 21/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//

import UIKit

class PokeTableViewCell: UITableViewCell {

    @IBOutlet weak var nomePokemon: UILabel!
    
    @IBOutlet weak var ivPokemon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
