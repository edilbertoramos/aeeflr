//
//  PBCOrcamentoViewController.swift
//  publiCarro
//
//  Created by Lúcio Barros on 03/11/15.
//  Copyright © 2015 tambatech. All rights reserved.
//

import UIKit

class PBCOrcamentoViewController: UIViewController {
    @IBOutlet var orcamentoButton: UIButton!
    
    private var embeddedViewController: PBCOrcamentoTableViewController!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? PBCOrcamentoTableViewController
            where segue.identifier == "OrcamentoEmbedSegue" {
                
                self.embeddedViewController = vc
        }
    }
    @IBAction func enviarOrcamento(sender: AnyObject) {
        print(self.embeddedViewController.nomeTextField.text)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        navigationController?.navigationBar.hidden = false
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
