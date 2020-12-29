//
//  AnzanFirstViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/10/03.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class AnzanFirstViewController: UIViewController {
    
    var number1: Int = 0
    var number2: Int = 0
    var answer: Int = 0
    var count: Float = 0
    var timer: Timer = Timer()
    
    @IBOutlet var Number1: UILabel!
    @IBOutlet var Number2: UILabel!
    @IBOutlet var Gamestart: UIButton!
    @IBOutlet var Kakikomi: UITextField!
    @IBOutlet var OK: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Kakikomi.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toAKView"{
            let nextView = segue.destination as! AnzanKaitouViewController
            nextView.argString11 = String(answer)
            nextView.argString12 = Kakikomi.text!
            
        }
    }
    
    @objc func up() {
        count = count + 0.01
        if count > 0.5{
            timer.invalidate()
            Number1.text = "ー"
            Number2.text = "ー"
        }
    }
    
    @IBAction func gamestart(){
        Kakikomi.text = ""
        number1 = Int.random(in:10...99)
        number2 = Int.random(in: 10...99)
        Number1.text = String(number1)
        Number2.text = String(number2)
        if !timer.isValid{
            count = 0.0
            timer = Timer.scheduledTimer(
                timeInterval:0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        Kakikomi.isHidden = false
        answer = number1 + number2
    }
    
    @IBAction func ok(){
        
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


