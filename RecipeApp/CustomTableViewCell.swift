//
//  CustomTableViewCell.swift
//  RecipeApp
//
//  Created by Behar Cakiqi on 20/07/2020.
//  Copyright © 2020 Gresa. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var foodImage: UIImageView!
    
    
    @IBOutlet weak var foodlbl: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

   
}
