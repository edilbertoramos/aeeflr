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
        
    
        let publicarro = UIImageView()
        publicarro.image = UIImage(named: "carro.png")
        
       
    
        
        // definindo o tamanho do quadrado
        publicarro.frame = CGRect(x: 60, y: 300, width: 100, height: 100)
        
        
        self.view.addSubview(publicarro) // adicionando o quadrado na view
        
        /* essa animacao move o carro da esquerda para direita
        
        o método abaixo defini a duração da animação e o estado final da animacao
        
        UIView.animateWithDuration(1.0, animations: {quadradoColorido.backgroundColor = UIColor.redColor()
        quadradoColorido.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
    })
        */
        
        
        
        let rotacionar = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            
            publicarro.transform = CGAffineTransformMakeRotation(rotacionar)
        })
        
        
        let duracao = 10.0
        let delay = 0.0
        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
        
        UIView.animateKeyframesWithDuration(duracao, delay: delay, options: options, animations: {
            // each keyframe needs to be added here
            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                publicarro.transform = CGAffineTransformMakeRotation(1/3 * rotacionar)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                publicarro.transform = CGAffineTransformMakeRotation(2/3 * rotacionar)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                publicarro.transform = CGAffineTransformMakeRotation(3/3 * rotacionar)
            })
            
            }, completion: {finished in
                // any code entered here will be applied
                // once the animation has completed
                
        })
        
        
        /*
        
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
        
     
        */
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animacaoTapped(sender: AnyObject) {
        
        
    }
    

}
