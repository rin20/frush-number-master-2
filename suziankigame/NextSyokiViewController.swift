//
//  NextSyokiViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/10/04.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class NextSyokiViewController: UIViewController {
    
    var nanido: [[String]] = [["３桁","ーーー"],["５桁","ーーーーー"],["７桁","ーーーーーーー"]]
    
    @IBOutlet var Easy: UIButton!
    @IBOutlet var Normal: UIButton!
    @IBOutlet var Hard: UIButton!
    @IBOutlet var rule: UIButton!
    @IBOutlet var FrushNumber: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
            
        Easy.layer.cornerRadius = Easy.frame.size.width * 0.135
        Normal.layer.cornerRadius = Normal.frame.size.width * 0.135
        Hard.layer.cornerRadius = Hard.frame.size.width * 0.135
        rule.layer.cornerRadius = 20.0

        FrushNumber.adjustsFontSizeToFitWidth = true
        // Do any additional setup after loading the view.
    }
    
    func performSefueToResult(){
        performSegue(withIdentifier: "easySegue" , sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "eazySegue"{
            let nextView = segue.destination as! NextViewController
            nextView.A = String("３桁")
            nextView.B = String("ーーー")
        }else if segue.identifier == "normalSegue"{
            let nextView = segue.destination as! NextViewController
            nextView.A = String("５桁")
            nextView.B = String("ーーーーー")
        }else if segue.identifier == "hardSegue"{
            let nextView = segue.destination as! NextViewController
            nextView.A = String("７桁")
            nextView.B = String("ーーーーーーー")
        }
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
