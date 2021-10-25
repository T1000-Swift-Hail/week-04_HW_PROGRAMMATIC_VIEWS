//
//  ViewController.swift
//  Choose My Pet
//
//  Created by iAbdullah17 on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

      segmentedControlView =  UISegmentedControl(items: choices)
        
        
segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
       segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10).isActive = true
       segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor) .isActive = true
       
//        segmentedControlView.heightAnchor.constraint(equalToConstant:60 ).isActive = true
//        segmentedControlView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = .systemFont(ofSize: 20)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
       changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 30) .isActive = true
       changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor) .isActive = true
       changeViewLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -20) .isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)

    

        
         
    }
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
       changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     }


}

