//
//  ViewController.swift
//  lazy-var-crash
//
//  Created by Daniel Miedema on 2/18/16.
//  Copyright © 2016 dmiedema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 1 / UIScreen.mainScreen().scale
        button.layer.cornerRadius = 4
        button.layer.borderColor = UIColor.redColor().CGColor
        button.tintColor = .redColor()
        button.setTitle("Button", forState: .Normal)
        button.setTitleColor(.redColor(), forState: .Normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        view.addSubview(button)
        button.addTarget(self, action: Selector("buttonPressed:"), forControlEvents: .TouchUpInside)

        button.superview?.addConstraints([NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: button.superview, attribute: .CenterX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: .Equal, toItem: button.superview, attribute: .CenterY, multiplier: 1, constant: 0)])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonPressed(sender: UIButton) {
        NSLog("\(sender) - Button Pressed")
    }

}

