//
//  ViewController.swift
//  Choose My Pet
//
//  Created by mac on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController  {
    
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
    segmentedControlView = UISegmentedControl(items: choices)
    segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControlView.selectedSegmentTintColor = .systemCyan
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = UIFont.systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode  =  .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.textColor = .black
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
       // changeViewLabel.frame = .init(x: 10, y: 200, width: view.frame.width - 50, height: 80)
        view.addSubview(changeViewLabel)
        view.addSubview(segmentedControlView)
        
        
        //
        
        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        //changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        changeViewLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        changeViewLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5).isActive = true
        
        //
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
}
    
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
       changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     
    }

}
