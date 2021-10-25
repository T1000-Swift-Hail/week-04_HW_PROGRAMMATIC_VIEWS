//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Monafh on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func loadView(){
        view = UIView()
        view.backgroundColor = UIColor.white
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        changeViewLabel = UILabel()
        segmentedControlView =  UISegmentedControl(items: choices)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControlView)
        
        changeViewLabel.text = "Please Choose your Pet Animal"
        UIFont.systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode =  .byWordWrapping
        changeViewLabel.textAlignment = .center
        changeViewLabel.numberOfLines = 4
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 50).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true

        
        
        changeViewLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 200).isActive = true
        changeViewLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        changeViewLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    }
    
    
}









