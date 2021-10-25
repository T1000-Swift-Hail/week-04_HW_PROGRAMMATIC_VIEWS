//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Majed Alshammari on 19/03/1443 AH.
//

import UIKit
class ViewController: UIViewController {
    
    var segmentedControlView: UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor =  .white
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
        segmentedControlView = UISegmentedControl(items: choices)
        
        
        view.addSubview(segmentedControlView)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20) .isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor) .isActive = true
        
        
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = UIFont.systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(changeViewLabel)
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor) .isActive = true
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.safeAreaLayoutGuide.bottomAnchor, constant: 60) .isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,constant: -25).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange( _ :)), for: .valueChanged)
        
    }
    
    @objc func controlValueChange( _ segControl : UISegmentedControl) {
        
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
        
    }
    
    
}

