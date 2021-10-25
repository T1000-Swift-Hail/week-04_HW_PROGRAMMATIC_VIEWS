//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Ahmed Alenazi on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControlView = UISegmentedControl(items: choices)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
        
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = .systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(changeViewLabel)
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        
        
        
        
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
    }
    
    
    @objc func controlValueChange(_ segControl : UISegmentedControl){
        
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    }
    
    
    
}


