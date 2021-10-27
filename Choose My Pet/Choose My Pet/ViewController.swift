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
        
        
        
     
        changeViewLabel = UILabel()
        changeViewLabel.text = "Cat"
        changeViewLabel.font.withSize(30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        segmentedControlView = UISegmentedControl()
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControlView.insertSegment(withTitle: choices[0], at: 0, animated: true)
        segmentedControlView.insertSegment(withTitle: choices[1], at: 1, animated: true)
        segmentedControlView.insertSegment(withTitle: choices[2], at: 2, animated: true)
        
        view.addSubview(segmentedControlView)
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30).isActive = true
        

             
    
        
        view.addSubview(changeViewLabel)
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -20).isActive = true
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor,constant: 40).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        segmentedControlView.addTarget(self, action: #selector(segmentTapped(_ :)), for: .valueChanged)
        
    
    }
    
    @objc func segmentTapped(_ sender : UISegmentedControl) {
     
     switch segmentedControlView.selectedSegmentIndex {
     case 0:
         changeViewLabel.text = "Your Pet animal is a Baird! a good choice!"
     case 1:
         changeViewLabel.text = "your Pet animal is a cat! a good choice!"
     case 2:
         changeViewLabel.text = "your Pet animal is a Horse! a good choice!"
     default:
         changeViewLabel.text = " "
         
     }
 }
}
