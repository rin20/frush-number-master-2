//
//  helpController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/16.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class helpController: UIViewController {
    
    @IBOutlet var Back: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Back.layer.cornerRadius = 15
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
