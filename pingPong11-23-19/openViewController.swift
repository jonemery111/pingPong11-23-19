//
//  openViewController.swift
//  pingPong11-23-19
//
//  Created by jon emery on 11/23/19.
//  Copyright © 2019 jon emery. All rights reserved.
//

import UIKit

class openViewController: UIViewController {
    
    @IBOutlet weak var gamePoint11: UIButton!
    
    @IBOutlet weak var gamePoint21: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // gamePoint11.flash()
        //gamePoint21.flash()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        gamePoint11.flash()
        gamePoint21.flash()
        
    }
    
   
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
