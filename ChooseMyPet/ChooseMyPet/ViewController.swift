//
//  ViewController.swift
//  ChooseMyPet
//
//  Created by Njoud Alrshidi on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController{
    var segmentedControlView  : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    override func loadView() {
        
            view = UIView()
        view.backgroundColor = UIColor.white
        }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControlView = UISegmentedControl( items: choices)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font.withSize(30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant :18).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor ,constant: 100).isActive = true
        //changeViewLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       //changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)

        
        // Do any additional setup after loading the view.
    }

    @objc func controlValueChange(_ segControl : UISegmentedControl) {
       changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     }

}

