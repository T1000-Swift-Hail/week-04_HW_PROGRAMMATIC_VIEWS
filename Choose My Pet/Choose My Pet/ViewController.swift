//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Hesah Alqhtani on 25/10/2021.
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
        
        segmentedControlView = UISegmentedControl(items: choices)

        
     //   segmentedControlView.frame = .init(x: 100, y: 100, width: 200, height: 40)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControlView)
        
        
            
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
      
        changeViewLabel = UILabel()
        changeViewLabel.text = "Please Choose your Pet Animal,"
        changeViewLabel.font.withSize(30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
      //  changeViewLabel.frame = .init(x: 95, y: 40, width: 200, height: 400)
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
        
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)

    }
  
            
        
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
       changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
     }

        // Do any additional setup after loading the view.
        
    


    }

