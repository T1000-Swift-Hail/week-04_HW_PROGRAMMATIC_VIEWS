//
//  ViewController.swift
//  Choose My Pet
//
//  Created by noyer altamimi on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var segmentedControlView : UISegmentedControl!

    var changeViewLabel : UILabel!

    let choices = ["Bird", "Cat", "Horse"]
    

   
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        segmentedControlView = UISegmentedControl(items: choices)
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive= true
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 50).isActive= true
      

        
        
        
     
        changeViewLabel = UILabel()
        changeViewLabel.text = "Cat"
        changeViewLabel.font.withSize(30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(changeViewLabel)
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -20).isActive = true
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor,constant: 40).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
    
    }


@objc func controlValueChange(_segcontrol : UISegmentedControl) {
            changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
        }
}
