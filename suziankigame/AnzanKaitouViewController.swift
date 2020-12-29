//
//  AnzanKaitouViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/10/03.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class AnzanKaitouViewController: UIViewController {
    
    var argString11 = ""
    var argString12 = ""
    var argString13 = ""
    
    @IBOutlet var Nyuryoku: UILabel!
    @IBOutlet var Seitou: UILabel!
    @IBOutlet var Hyouka: UILabel!
    @IBOutlet var Mouitido: UIButton!
    @IBOutlet var Nanido: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        Seitou.text = String(argString11)
        Nyuryoku.text = String(argString12)
        
        if Nyuryoku.text == Seitou.text{
            Hyouka.text = "正解！！"
        }else{
            Hyouka.text = "不正解..."
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mouitido(){
        argString11 = String("")
        let parentVC = presentingViewController as! AnzanFirstViewController
        parentVC.Kakikomi.text = ""
        print(parentVC)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func nanido(){
         self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
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
