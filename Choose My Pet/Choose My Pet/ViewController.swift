//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Hana Alshmmri on 25/10/2021.
//

import UIKit

class ViewController: UIViewController {

    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["Bird", "Cat", "Horse"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        changeViewLabel = UILabel()
        changeViewLabel.textColor = .label
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.font = UIFont.systemFont(ofSize: 15)
        changeViewLabel.numberOfLines = 3
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeViewLabel)
        
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        changeViewLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        segmentedControlView = UISegmentedControl()
        segmentedControlView.insertSegment(withTitle: choices[0], at: 0, animated: true)
        segmentedControlView.insertSegment(withTitle: choices[1], at: 1, animated: true)
        segmentedControlView.insertSegment(withTitle: choices[2], at: 2, animated: true)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        segmentedControlView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30).isActive = true
    
        
        segmentedControlView.addTarget(self, action: #selector(segmentTapped), for: .valueChanged)
        
        
        let image = UIImageView(image: UIImage(named: "3"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: -30).isActive = true
        
        image.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        
        view.sendSubviewToBack(image)
        
    }
    
    @objc func segmentTapped() {
        
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
