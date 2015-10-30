
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
        user.signUpInBackgroundWithBlock { (sucess, error) -> Void in
            if sucess == true
            {
                print("Usuario foi Cadastrado!")
            }
            else
            {
                print(error!.userInfo["error"] as? NSString)
            }
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}