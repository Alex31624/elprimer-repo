//
//  BoxView.swift
//  EP_Rosas
//
//  Created by user178653 on 10/16/20.
//

import UIKit

class BoxView: UIView {
    
    override func draw(_ rect: CGRect){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapInViewGesture))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapInViewGesture(){
        
        UIView.animate(withDuration: 8){
            self.changeColor()
            self.changePosition()
        }
    }
    
    func changePosition(){
        
        let width = self.superview?.frame.width ?? 0
        let heigth = self.superview?.frame.height ?? 0
        
        let posx = CGFloat.random(in: 0...width)
        let posy = CGFloat.random(in: 0...heigth)
        
        self.center = CGPoint(x: posx, y: posy)
    }
    
    func changeColor(){
        
        let r = CGFloat.random(in: 0...255) / 255.0
        let g = CGFloat.random(in: 0...255) / 255.0
        let b = CGFloat.random(in: 0...255) / 255.0

        self.backgroundColor = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1)
        
    }

}

