//
//  ViewController.swift
//  MarvelHeroes
//
//  Created by mtodd on 9/10/16.
//  Copyright © 2016 Matt Todd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startColor = UIColor(red: 51/256, green: 0, blue: 0, alpha: 1)
        let midColor = UIColor(red: 170/256, green: 0, blue: 0, alpha: 1)
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.CGColor, midColor.CGColor, startColor.CGColor]
        self.view.layer.insertSublayer(gradient, atIndex: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

