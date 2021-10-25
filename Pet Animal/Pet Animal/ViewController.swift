//
//  ViewController.swift
//  Pet Animal
//
//  Created by طلال عبيدالله دعيع القلادي on 25/10/2021.
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
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        //segmentedControlView.frame = .init(x: 40, y: 100, width: 100, height: 50)
        
        
        
        view.addSubview(segmentedControlView)
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30).isActive = true
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.textColor = .white
        changeViewLabel.font = UIFont.systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.layer.cornerRadius = 16
        changeViewLabel.backgroundColor = .gray
       
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //changeViewLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //changeViewLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        view.addSubview(changeViewLabel)
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -10).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
    }
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
       changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     }
        
    }
    


