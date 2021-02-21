
import UIKit

class ViewController: UIViewController {

    
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
        case "OO":
            viewTatle.text = "O"
        default:
            viewTatle.text = "請輸入正確血型"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //爸爸血型選擇
    @IBAction func dodBlood(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            blood01 = sender.titleForSegment(at: 0)!
            print(blood01)
        case 1:
            blood01 = sender.titleForSegment(at: 1)!
            print(blood01)
        case 2:
            blood01 = sender.titleForSegment(at: 2)!
            print(blood01)
        case 3:
            blood01 = sender.titleForSegment(at: 3)!
            print(blood01)
        default:
            break
        }
        judgmentBloodFunc()
    }
    //媽媽血型選擇
    @IBAction func momBlood(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            blood02 = sender.titleForSegment(at: 0)!
            print(blood02)
        case 1:
            blood02 = sender.titleForSegment(at: 1)!
            print(blood02)
        case 2:
            blood02 = sender.titleForSegment(at: 2)!
            print(blood02)
        case 3:
            blood02 = sender.titleForSegment(at: 3)!
            print(blood02)
        default:
            break
        }
        judgmentBloodFunc()
    }
    
    }
    


