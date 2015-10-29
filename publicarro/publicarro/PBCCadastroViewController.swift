
import UIKit
import Parse

class PBCCadastroViewController: UIViewController
{
    @IBOutlet weak var tfLogin: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(sender: AnyObject)
    {
        let user = PFUser()
        print(tfLogin.text)
        print(tfPassword.text)
        user.username = tfLogin.text
        user.password = tfPassword.text
        user.signUpInBackgroundWithBlock { success, error in
            if error == nil
            {
                print(error!.userInfo["error"] as? NSString)
            }
            else
            {
                print("Usuario Cadastrado !")
            }
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}