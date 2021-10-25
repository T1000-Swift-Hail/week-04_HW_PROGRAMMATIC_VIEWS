//
//  ViewController.swift
//  Choose My Pet
//
//  Created by Dalal AlSaidi on 19/03/1443 AH.
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
        
        let backgroundImage = UIImageView(image: UIImage(named: "footers"))
        changeViewLabel = UILabel()
        let segmentedControlView = UISegmentedControl(items: choices)
        view.addSubview(backgroundImage)
        view.addSubview(segmentedControlView)
        view.addSubview(changeViewLabel)
        
        //  MARK: - changeViewLabel
        changeViewLabelFunc()
        
        //  MARK: - segmentedControlViewFunc
        segmentedControlViewFunc(segmentedControlView)
        
        //  MARK: - backgroundImageFunc
        backgroundImageFunc(backgroundImage)
    }
    
    
    fileprivate func backgroundImageFunc(_ backgroundImage: UIImageView) {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.alpha = 0.4
        backgroundImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
    }
    
    fileprivate func segmentedControlViewFunc(_ segmentedControlView: UISegmentedControl) {
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
    }
    
    fileprivate func changeViewLabelFunc() {
        changeViewLabel.text = "Please Choose your Pet Animal"
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        UIFont.systemFont(ofSize: 30)
        changeViewLabel.textAlignment = .center
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        changeViewLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100).isActive = true
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    @objc func controlValueChange(_ segControl : UISegmentedControl) {
        changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
    }
    
    
}

