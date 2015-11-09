//
//  PBCCadastroMotoristaTableViewController.swift
//  publiCarro
//
//  Created by Lúcio Barros on 04/11/15.
//  Copyright © 2015 tambatech. All rights reserved.
//

import UIKit

class PBCCadastroMotoristaTableViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var telefone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var cpf: UITextField!
    @IBOutlet weak var cep: UITextField!
    @IBOutlet weak var estado: UITextField!
    @IBOutlet weak var cidade: UITextField!
    @IBOutlet weak var bairro: UITextField!
    @IBOutlet weak var endereco: UITextField!
    @IBOutlet weak var renavamCarro: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}
