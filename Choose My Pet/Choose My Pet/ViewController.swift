//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Seham الشطنان on 19/03/1443 AH.
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
            view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
            segmentedControlView = UISegmentedControl (items: choices)
            segmentedControlView.addTarget(self, action: #selector(controlValueChange(_:)),for: .valueChanged)
            
            segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(segmentedControlView)
            
            segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
            
            segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
            
            changeViewLabel = UILabel()
            changeViewLabel.text = "Cat"
            changeViewLabel.font = UIFont.systemFont(ofSize: 30)
            changeViewLabel.numberOfLines = 4
            changeViewLabel.lineBreakMode = .byWordWrapping
            changeViewLabel.textAlignment = .center
            
            changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(changeViewLabel)
            
            changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
            changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor,constant: 40).isActive = true
            changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor,constant:  -20).isActive = true
            
        
            view.addSubview(segmentedControlView)
            view.addSubview(changeViewLabel)
            
            
            
        
        
        
    }
    
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    
    }


}



