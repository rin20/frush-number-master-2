import UIKit

class NextKaitoController: UIViewController {
    
    var argString11 = ""
    var argString12 = ""
    var argString13 = ""
    
    @IBOutlet var nyuryoku: UILabel!
    @IBOutlet var seitou: UILabel!
    @IBOutlet var hyouka: UILabel!
    @IBOutlet var Mouitido: UIButton!
    @IBOutlet var Nanido: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mouitido.layer.cornerRadius = 20.0
        Nanido.layer.cornerRadius = 20.0    

        seitou.text = String(argString12)
        nyuryoku.text = String(argString13)
        if nyuryoku.text == seitou.text{
            hyouka.text = "正解！！"
        }else{
            hyouka.text = "不正解..."
        }
    }
    
    @IBAction func mouitido(){
        let parentVC = presentingViewController as! NextViewController
        parentVC.kakikomi.text = ""
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

