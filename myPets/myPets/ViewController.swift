//
//  ViewController.swift
//  myPets
//
//  Created by Anas Hamad on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    override func loadView() {
        view = UIView()
        view.backgroundColor = .purple
    }
    
    var segmentedControlView :UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentedControlView =  UISegmentedControl(items:choices)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        segmentedControlView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,constant: 25).isActive = true
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = .systemFont(ofSize: 30)
        changeViewLabel.textAlignment = .center
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        changeViewLabel.bottomAnchor.constraint(equalTo: segmentedControlView.safeAreaLayoutGuide.bottomAnchor,constant:80 ).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,constant: -25).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
    }
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"}


}

