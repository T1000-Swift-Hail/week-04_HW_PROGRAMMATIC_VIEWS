//
//  ViewController.swift
//  Choose My Pet
//"Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
//  Created by Mastorah on 25/10/2021.
//

import UIKit

class ViewController: UIViewController {


var segmentedControlView : UISegmentedControl!
var changeViewLabel : UILabel!
let choices = ["Bird", "Cat", "Horse"]
  
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
    }
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        
        
changeViewLabel = UILabel()
changeViewLabel.text = "Please Choose your Pet Animal"
changeViewLabel.font = UIFont.systemFont(ofSize: 30)
changeViewLabel.numberOfLines = 4
changeViewLabel.lineBreakMode = .byWordWrapping
changeViewLabel .textAlignment = .center
changeViewLabel .translatesAutoresizingMaskIntoConstraints = false

    segmentedControlView = UISegmentedControl(items: choices)
   
segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(segmentedControlView)
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 25).isActive = true
   
        segmentedControlView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
   
        view.addSubview(changeViewLabel)
    
    changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    changeViewLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    
    segmentedControlView.addTarget(self, action: #selector(controlvaluechange(_ :)), for: .valueChanged)
}
@objc func controlvaluechange(_ segcontrol : UISegmentedControl) {
    changeViewLabel.text = "Your pet animal is a \(choices[segmentedControlView.selectedSegmentIndex])  ! A good choice !"
}
    
}

