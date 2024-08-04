import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        der back Button wird nicht mehr angezeigt.
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            print("logged out successfull")
//            mit dieser Funktion, springt man direkt zum Start-Screen.
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
}
