//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Marame on 16/09/2018.
//  Copyright © 2018 Marame. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    let identifiantCell = "ChansonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

     tableView.delegate = self
     tableView.dataSource = self
        
        ajouterChanson()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let chanson = chansons[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell{
           cell.creerCell(chanson)
            return cell
        }

        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
    func ajouterChanson(){
        
        chansons = [Chanson]()
        let dionne = Chanson(artiste: "Dionne Warwick", titre: "That's What Friends Are For", code: "HyTpu6BmE88")
        chansons.append(dionne)
         let prayer = Chanson(artiste: "Aretha Franklin", titre: "say a little prayer", code: "KtBbyglq37E")
        chansons.append(prayer)
         let think = Chanson(artiste: "Aretha Franklin", titre: "Think", code: "Vet6AHmq3_s")
        chansons.append(think)
         let respet = Chanson(artiste: "Aretha Franklin", titre: " Respect", code: "OD3WOKLTRyQ")
        chansons.append(respet)
         let soul = Chanson(artiste: "Tracy Chapman", titre: "Give Me One Reason", code: "V6hQ9HSKlIE")
        chansons.append(soul)
        let sha = Chanson(artiste: "Shania Twain", titre: "I Ain't No Quitter", code: "4G8bI17_AAc")
        chansons.append(sha)
         let shana = Chanson(artiste: "Shania Twain", titre: "Whose Bed Have Your Boots Been Under", code: "iZRA-Dwv86E")
        chansons.append(shana)
         let stev = Chanson(artiste: "Stevie Wonder", titre: "I Just Called To Say I Love You", code: "wFEH4GYXhAk")
        chansons.append(stev)
         let gloria = Chanson(artiste: "Gloria Gaynor", titre: "I Will Survive", code: "ARt9HV9T0w8")
        chansons.append(gloria)
        tableView.reloadData()
    }
}
