//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    
    // Lable My Profile
    private let labelTitle = UILabel()
    
    // User profile Image
    private let profileImg = UIImageView()
    
    // Label Profile name
    private let profileLabelName = UILabel()
    
    // Label profile bio
    private let labelBio = UILabel()
    
    // User personal Info
    
    private let addressIcon = UIImageView()
    
    private let workingIcon = UILabel()
    
    // Label Hometown
    private let addressLabel = UILabel()
    
    // Label major/position
    private let professionalLabel = UILabel()
    
    // Edit profile button
    private let editButton = UIButton()
    
    // MARK: - Properties (data)

    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        showSceneTitle()
        showprofileImg()
        showUserName()
        showBioLable()
        showAddressIcon()
        showAddressLable()
        showProfessionalLabel()
        showEditButton()
        self.editButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    // MARK: - Set Up Views
    @objc private func didTapButton(sender: UIButton) {
        print("Thang")
    }
    
    // Set up the top head title
    private func showSceneTitle() {
        labelTitle.text = "My profile"
        labelTitle.textColor = UIColor.black
        labelTitle.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(labelTitle)
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            labelTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }
    
    // Set up the profile image view
    private func showprofileImg() {
        profileImg.image = UIImage(named: "playstation")
        profileImg.layer.cornerRadius = 64
        profileImg.contentMode = .scaleAspectFill
        profileImg.layer.masksToBounds = true
        
        view.addSubview(profileImg)
        profileImg.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup profile img constraints
        NSLayoutConstraint.activate([
            profileImg.topAnchor.constraint(equalTo: labelTitle.topAnchor, constant: 50),
            profileImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImg.heightAnchor.constraint(equalToConstant: 128),
            profileImg.widthAnchor.constraint(equalToConstant: 128),
        ])
    }
    
        // Setup constraints of Username profile
    private func showUserName() {
        profileLabelName.text = "Thang Hoang"
        profileLabelName.font = .systemFont(ofSize: 20, weight: .semibold)
        profileLabelName.textColor = UIColor.black
        
        view.addSubview(profileLabelName)
        profileLabelName.translatesAutoresizingMaskIntoConstraints = false
        
        // Username constraints properties
        NSLayoutConstraint.activate([
            profileLabelName.bottomAnchor.constraint(equalTo: profileImg.bottomAnchor, constant: 50),
            profileLabelName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
        
        // Setup constraints of Bio label
        private func showBioLable() {
            labelBio.text = "100% focused on iOs Developing"
            labelBio.textColor = UIColor.black
            labelBio.font = .systemFont(ofSize: 14)
            
            view.addSubview(labelBio)
            labelBio.translatesAutoresizingMaskIntoConstraints = false
            
            // Bio constraints properties
            NSLayoutConstraint.activate([
                labelBio.bottomAnchor.constraint(equalTo: profileLabelName.bottomAnchor, constant: 30),
                labelBio.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
        }
        
        // Setup Hometown Icon
    private func showAddressIcon() {
        addressIcon.image = UIImage(systemName: "house.fill")
        
        
        view.addSubview(addressIcon)
        addressIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addressIcon.bottomAnchor.constraint(equalTo: labelBio.bottomAnchor, constant: 50),
            addressIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            addressIcon.widthAnchor.constraint(equalToConstant: 20),
            addressIcon.heightAnchor.constraint(equalToConstant: 18),
        ])
    }
    
    
        // Setup Hometown and professional Label
    
        // Hometown Label setup
        private func showAddressLable() {
            addressLabel.text = "Hanoi, Vietnam"
            addressLabel.textColor = UIColor.black
            addressLabel.font = .systemFont(ofSize: 14)
            
            view.addSubview(addressLabel)
            addressLabel.translatesAutoresizingMaskIntoConstraints = false
            
            // Address Label constraints properties
            NSLayoutConstraint.activate([
                addressLabel.bottomAnchor.constraint(equalTo: labelBio.bottomAnchor, constant: 50),
                addressLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60)
            ])
            
         }
         private func showProfessionalLabel() {
             professionalLabel.text = "Pursuing Developer Career"
             professionalLabel.textColor = UIColor.black
             professionalLabel.font = .systemFont(ofSize: 14)
             
             view.addSubview(professionalLabel)
             professionalLabel.translatesAutoresizingMaskIntoConstraints = false
             
             // Setup professional label constraints properties
             NSLayoutConstraint.activate([
             professionalLabel.bottomAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 30),
             professionalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            ])
        }
        
        // Setup button on screen
    private func showEditButton() {
        editButton.backgroundColor = UIColor.a2.ruby
        editButton.setTitle("Edit Profile", for: .normal)
        editButton.layer.cornerRadius = 20
        
        view.addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup button constraints properties
        NSLayoutConstraint.activate([
            editButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
            editButton.heightAnchor.constraint(equalToConstant: 56),
            editButton.widthAnchor.constraint(equalToConstant: 329),
            editButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
       
}
