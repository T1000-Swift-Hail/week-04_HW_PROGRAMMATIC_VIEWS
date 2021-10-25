//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Mohammed Abdullah on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - image view
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        // MARK: - image view
        let segmentedControlView = UISegmentedControl(items: choices)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
        segmentedControlView.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
        
        
        // MARK: - image view
        changeViewLabel = UILabel ()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.font = .systemFont(ofSize: 30)
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(changeViewLabel)
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20) .isActive = true
        
        
        // MARK: - image view
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
    }
    // MARK: - image view
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    }
    
    
    
}

