//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Marame on 27/09/2018.
//  Copyright © 2018 Marame. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson :Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson?.titre
        }
    }
}
