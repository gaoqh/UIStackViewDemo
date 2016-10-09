//
//  StackViewController.swift
//  UIStackViewDemo
//
//  Created by gaoqinghua on 16/10/9.
//  Copyright © 2016年 gaoqinghua. All rights reserved.
//

import UIKit


class StackViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!

    @IBOutlet weak var spacingLabel: UILabel!
    init() {
        super.init(nibName: "StackViewController", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func oneTapped(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            sender.hidden = true
        }
    }

    @IBAction func twoTapped(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            sender.hidden = true
        }
    }
    
    @IBAction func threeTapped(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            sender.hidden = true
        }
    }
    
    @IBAction func verticalClick(sender: UIButton) {
        stackView.axis = .Vertical
    }
    
    @IBAction func horizontalClick(sender: UIButton) {
        stackView.axis = .Horizontal
    }
    @IBAction func spacingClick(sender: UIStepper) {
        spacingLabel.text = "spacing:\(sender.value)"
        stackView.spacing = CGFloat(sender.value)
    }
    
    @IBAction func hideAll(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            for subView in self.stackView.subviews {
                subView.hidden = true
            }
        }
    }
    
    @IBAction func showAll(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            for subView in self.stackView.subviews {
                subView.hidden = false
            }
        }
    }
    @IBAction func alignmentFill(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.alignment = .Fill
        }
    }
    
    @IBAction func alignmentCenter(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.alignment = .Center
        }
    }
    @IBAction func alignmentTrailing(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.alignment = .Trailing
        }
    }
    
    @IBAction func alignmentLeading(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.alignment = .Leading
        }
    }
    @IBAction func distributionFill(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.distribution = .Fill
        }
    }
    @IBAction func distributionFillEqually(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.distribution = .FillEqually
        }
    }
    
    @IBAction func distributionFillProportionally(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.distribution = .FillProportionally
        }
    }
    @IBAction func distributionEqualSpacing(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.distribution = .EqualSpacing
        }
    }
    
    @IBAction func distributionEqualCentering(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.stackView.distribution = .EqualCentering
        }
    }
}
