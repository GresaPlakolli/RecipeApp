//
//  infoAbutUs.swift
//  RecipeApp
//
//  Created by Behar Cakiqi on 20/07/2020.
//  Copyright © 2020 Gresa. All rights reserved.
//

import Foundation
class infoAboutUs{
    
    
    var name: String = ""
    var profession: String = ""
    var id: Int = 0
    
    
    init(id:Int, name:String, profession:String)
    {
        self.id = id
        self.name = name
        self.profession = profession
    }
}
