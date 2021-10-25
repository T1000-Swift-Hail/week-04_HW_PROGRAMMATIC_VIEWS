//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Mac on 25/10/2021.
//

import UIKit

class ViewController: UIViewController {
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        segmentedControlView = UISegmentedControl(items: choices)
        // Do any additional setup after loading the view.
         segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        //        let segmentedControl = UISegmentedControl()
        segmentedControlView.selectedSegmentTintColor = .systemGreen
        segmentedControlView.selectedSegmentIndex = 2
        //segmentedControlView.frame = .init(x: 50, y:40, width: 300, height: 40)
        
        view.addSubview(segmentedControlView)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.textColor = .systemGreen
        changeViewLabel.font = .systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        //changeViewLabel.frame = .init(x: 39, y: 150, width: 320, height: 90)
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
        
        changeViewLabel.topAnchor.constraint(equalTo:segmentedControlView.bottomAnchor,constant: 20).isActive = true
        //changeViewLabel.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -20).isActive = true
        
    }
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        
        
        switch segControl.selectedSegmentIndex {
        case 0:
            changeViewLabel.text = "Your pet animal is a \(choices[0])  ! A good choice !"
        case 1:
            changeViewLabel.text = "Your pet animal is a \(choices[1])  ! A good choice !"
        case 2:
            changeViewLabel.text = "Your pet animal is a \(choices[2])  ! A good choice !"
        default:
            print("No animal found")
        }
        
        
    }
    
}

