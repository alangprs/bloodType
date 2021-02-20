
import UIKit

class ViewController: UIViewController {

    //讀輸入血型
    @IBOutlet var bloodTexField: [UITextField]!
    //顯示小孩可能血型
    @IBOutlet weak var viewTatle: UILabel!
    var parentsBloodArray = [String]() //存輸入父母的血型
    var blood01 = String()
    var blood02 = String()
    var babyBlood = String()//存小孩血型
    //判斷小孩血型func
    func judgmentBloodFunc(){
        babyBlood = blood01 + blood02
        switch babyBlood {
        case "AA":
            viewTatle.text = "A,O"
        case "AB","BA":
            viewTatle.text = "A,B,AB,O"
        case "AAB","ABA","BAB","ABB","ABAB":
            viewTatle.text = "A,B,AB"
        case "AO","OA":
            viewTatle.text = "A,O"
        case "BB":
            viewTatle.text = "B,O"
        case "BO","OB":
            viewTatle.text = "B,O"
        case "ABO","OAB":
            viewTatle.text = "A,B"
        case "O":
            viewTatle.text = "O"
        default:
            viewTatle.text = "請輸入正確血型"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //確定按鈕
    @IBAction func enter(_ sender: UIButton) {
        //將讀到輸入的血型，存入array
        blood01 = bloodTexField[0].text!
        parentsBloodArray.append(blood01)
        blood02 = bloodTexField[1].text!
        parentsBloodArray.append(blood02)
        judgmentBloodFunc() //判斷血型
        
        
        
        
    }
    
}

