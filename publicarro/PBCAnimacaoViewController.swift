//
//  PBCAnimacaoViewController.swift
//  publicarro
//
//  Created by Eduarda Pinheiro on 05/11/15.
//  Copyright © 2015 tambatech. All rights reserved.
//

import UIKit

class PBCAnimacaoViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //colorindo quadrado
        let quadradoColorido = UIView()
        quadradoColorido.backgroundColor = UIColor.greenColor()
        
        // definindo o tamanho do quadrado
        quadradoColorido.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        
        
        self.view.addSubview(quadradoColorido)
        
        // essa animacao move o quadrado da esquerda para direita
        
        // o método abaixo defini a duração da animação e o estado final da animacao
        
        UIView.animateWithDuration(1.0, animations: {quadradoColorido.backgroundColor = UIColor.redColor()
            quadradoColorido.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)


        // Do any additional setup after loading the view.
    })
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
