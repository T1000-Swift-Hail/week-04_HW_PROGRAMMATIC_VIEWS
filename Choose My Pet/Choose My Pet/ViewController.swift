//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Hind Alharbi on 10/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmentedControlView = UISegmentedControl()
        segmentedControlView.insertSegment(withTitle: "Bird", at: 0, animated: true)
        segmentedControlView.insertSegment(withTitle: "Cat", at: 1, animated: true)
        segmentedControlView.insertSegment(withTitle: "Horse", at: 2, animated: true)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControlView.frame = .init(x: 100, y: 200, width: 200, height: 50)
        view.addSubview(segmentedControlView)
       
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font.withSize(30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        changeViewLabel.frame = .init(x: 95, y: 300, width: 200, height: 50)
       view.addSubview(changeViewLabel)
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 30).isActive = true
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        view.addSubview(changeViewLabel)
      

        
    }
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    }
    
    
}

