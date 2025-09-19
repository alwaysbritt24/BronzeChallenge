//
//  ViewController.swift
//  World
//
//  Created by Brittany on 9/18/25.
//

import UIKit

class ConversionViewController: UIViewController {
    
    private let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
        
        view.backgroundColor = .clear
        
        gradientLayer.colors = [
            UIColor.systemPurple.cgColor, // Top
            UIColor.systemBlue.cgColor,
            UIColor.systemGreen.cgColor,
            UIColor.systemYellow.cgColor,
            UIColor.systemRed.cgColor ]
               
        gradientLayer.locations = [0.0, 0.25, 0.5, 0.75, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
        override func viewWillLayoutSubviews() {
               super.viewWillLayoutSubviews()
               gradientLayer.frame = view.bounds
           }
        
    



}

