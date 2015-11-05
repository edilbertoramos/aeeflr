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
        quadradoColorido.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        
        
        self.view.addSubview(quadradoColorido) // adicionando o quadrado na view
        
        /* essa animacao move o quadrado da esquerda para direita
        
        o método abaixo defini a duração da animação e o estado final da animacao
        
        UIView.animateWithDuration(1.0, animations: {quadradoColorido.backgroundColor = UIColor.redColor()
        quadradoColorido.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
    })
        */
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        // CAKeyframeAnimation anima a posicao dos objetos
        let anim = CAKeyframeAnimation(keyPath: "position")
        //definindo o caminho das animacoes
        anim.path = path.CGPath
        
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        quadradoColorido.layer.addAnimation(anim, forKey: "animate position along path")
        
    
     
        
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animacaoTapped(sender: AnyObject) {
        
        
    }
    

}
