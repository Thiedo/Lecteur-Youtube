//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by Marame on 17/09/2018.
//  Copyright © 2018 Marame. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {

    @IBOutlet weak var minature: UIView!
    @IBOutlet weak var artisteEtTitre: UILabel!
    
    var chanson : Chanson! // on force cete variabe a etre non optional
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func creerCell(_ chanson: Chanson){
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes:[.font:UIFont.boldSystemFont(ofSize: 20),.foregroundColor:UIColor.black])
        let secondeLigne = NSAttributedString(string: "\n"+self.chanson.artiste, attributes: [.font:UIFont.italicSystemFont(ofSize: 20),.foregroundColor:UIColor.darkGray])
        attributed.append(secondeLigne)
        artisteEtTitre.attributedText = attributed

        
    }
}
