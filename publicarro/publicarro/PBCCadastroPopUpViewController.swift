
import UIKit
import ParseUI

class PBCCadastroPopUpViewController: UIViewController, PFSignUpViewControllerDelegate
{
    @IBOutlet weak var btClose: UIButton!
    @IBOutlet weak var viewPopUp: UIView!
    
    let test = PFSignUpViewController()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        viewPopUp.layer.cornerRadius = 10
        btClose.layer.cornerRadius = 25
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button(sender: AnyObject)
    {
        UIView.transitionWithView(view, duration: 0.4, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {self.view.hidden = true}, completion: nil)
    }
    
    @IBAction func signUpAnunciante(sender: AnyObject)
    {
        presentViewController(test, animated: false, completion: nil)
    }
    
    override func viewDidDisappear(animated: Bool)
    {
        view.removeFromSuperview()
    }
}