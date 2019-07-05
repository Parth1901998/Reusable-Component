//
//  ViewController.swift
//  Reusable
//
//  Created by Parth Bhojak on 05/07/19.
//  Copyright © 2019 Parth Bhojak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
       @IBOutlet private var topCustomButton: CustomButton!
     var bottomCustomButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBottomButtonConstraints()
        addActionToBottomButton()
        bottomCustomButton.setTitle("Option 2", for: .normal)
    }
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    func setupBottomButtonConstraints() {
        view.addSubview(bottomCustomButton)
        bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomCustomButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
    }
    
    
    func addActionToBottomButton() {
        bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
    }
    
    
    @IBAction func topButtonTapped(_ sender: CustomButton) {
        topCustomButton.backgroundColor = UIColor.green
      
//        topCustomButton.shake()
        
    }
    
    
    @objc func bottomButtonTapped() {
        bottomCustomButton.backgroundColor = UIColor.red
        bottomCustomButton.shake()
    }
}

