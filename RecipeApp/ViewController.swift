//
//  ViewController.swift
//  RecipeApp
//
//  Created by Behar Cakiqi on 19/07/2020.
//  Copyright © 2020 Gresa. All rights reserved.
//

import UIKit
class ViewController : UIViewController{
    
    
    @IBOutlet var menuButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func handleSelection(_ sender: UIButton) {
       menuButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                
            })
            
            
        }
    
    }


enum Menus : String {
    case  foodRecipes = "Food Recipe"
    case  cakeRecipes = "Cake Recipe"
    
}
    
    @IBAction func menuTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let menu = Menus(rawValue : title)
            else
        {
            return
            
        }
        switch menu {
        case .foodRecipes:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "foodPage")
            vc.modalPresentationStyle = .overFullScreen
            present(vc,animated: true)
            
            print("Food")
        default:
            print("cake")
        
    }
    }
}
    



