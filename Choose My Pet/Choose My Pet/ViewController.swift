//
//  ViewController.swift
//  Choose My Pet
//
//  Created by mona aleid on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = UIFont.systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControlView = UISegmentedControl (items: choices)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControlView)
        view.addSubview(changeViewLabel)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10) .isActive = true
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor) .isActive = true
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20) .isActive = true
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor) .isActive = true
        
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -6) .isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)),for: .valueChanged)
         
    }

@objc func controlValueChange(_ segControl : UISegmentedControl) {
  changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
}
}
//let segmentedControlView = ( UISegmentedControl).self
        
        //segmentedControlView.frame = .init(x: 100, y: 100, width: 200, height: 40)
       //addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
