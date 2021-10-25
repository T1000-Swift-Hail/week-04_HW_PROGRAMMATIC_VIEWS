//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Asma Rasheed on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    var segmentedControlView :UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
       changeViewLabel = UILabel()
    
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = UIFont.systemFont(ofSize: 30)
        changeViewLabel.numberOfLines  = 4
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        segmentedControlView = UISegmentedControl (items :choices)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControlView)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.centerXAnchor ).isActive = true
        view.addSubview(changeViewLabel)
        
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeViewLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
    }

    @objc func controlValueChange(_ segControl : UISegmentedControl) {
          changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
  }
}


