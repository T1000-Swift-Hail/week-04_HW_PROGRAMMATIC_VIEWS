//
//  ViewController.swift
//  Choose My per
//
//  Created by HIND12 on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var segmentedcontrolview : UISegmentedControl!
    var changeviewlabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func loadView() {
 view = UIView()
        view.backgroundColor = UIColor.white
     

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeviewlabel = UILabel()
        segmentedcontrolview =  UISegmentedControl(items: choices)
        segmentedcontrolview.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedcontrolview)
        
        changeviewlabel.text = "please choose your pet Animal"
        UIFont.systemFont(ofSize: 30)
        changeviewlabel.numberOfLines = 4
        changeviewlabel.textAlignment = .center
        changeviewlabel.lineBreakMode = .byCharWrapping
        
        changeviewlabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeviewlabel)
        
        segmentedcontrolview.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)

        
        
        segmentedcontrolview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60).isActive = true
        
        segmentedcontrolview.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        
        
        changeviewlabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 300).isActive = true
        changeviewlabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        changeviewlabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
       changeviewlabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
                                              
        
        
        
    }
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeviewlabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     }

  
}








