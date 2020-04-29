//
//  MenuHeader.swift
//  Trogon
//
//  Created by carden pierre-vil on 4/28/20.
//  Copyright © 2020 Carden Pierre-Vil. All rights reserved.
//

import UIKit

class MenuHeader: UIView {
    
    // CARDEN: - Properties
    
//    var user: User? {
//        didSet {
//            fullnameLabel.text = user?.fullname
//            emailLabel.text = user?.email
//        }
//    }
    
    private let user: User
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .lightGray
        return iv
    }()
    
    private lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.text = "Carden Pierre-Vil"
        label.text = user.fullname
        return label
    }()
       
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.text = "test@gmail.com"
        label.text = user.email
        return label
    }()
    
    
    // CARDEN: - Lifecycle
    
    init(user: User, frame: CGRect) {
        self.user = user
        super.init(frame: frame)
        
        backgroundColor = .backgroundColor
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor,
                                paddingTop: 4, paddingLeft: 12,
                                width: 64, height: 64)
        profileImageView.layer.cornerRadius = 64 / 2
        
        let stack = UIStackView(arrangedSubviews: [fullnameLabel, emailLabel])
        stack.distribution = .fillEqually
        stack.spacing = 4
        stack.axis = .vertical
        
        addSubview(stack)
        stack.centerY(inView: profileImageView,
                      leftAnchor: profileImageView.rightAnchor,
                      paddingLeft: 12)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // CARDEN: - Selectors
    
}
