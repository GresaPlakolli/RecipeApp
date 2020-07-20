//
//  AboutViewController.swift
//  RecipeApp
//
//  Created by Behar Cakiqi on 20/07/2020.
//  Copyright © 2020 Gresa. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var aboutUsTable: UITableView!
    let cellReuseIdentifier = "cell"
    
    var db:DBHelper = DBHelper()
    
    var info :[infoAboutUs] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        aboutUsTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        aboutUsTable.delegate = self
        aboutUsTable.dataSource = self
        
        db.insert(id: 1, name: "Miranda", profession: "Software Engineer")
        db.insert(id: 2, name: "Gresa",profession: "Software Engineer" )
      
        
        info = db.read()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = "Name: " + info[indexPath.row].name + ", " + "Profession: " + info[indexPath.row].profession
        
        return cell
    }


}
