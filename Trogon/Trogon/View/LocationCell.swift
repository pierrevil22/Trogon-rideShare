//
//  LocationCell.swift
//  Trogon
//
//  Created by carden pierre-vil on 4/22/20.
//  Copyright © 2020 Carden Pierre-Vil. All rights reserved.
//

import UIKit
import MapKit

class LocationCell: UITableViewCell {

    // CARDEN: - Properties
    
    var placemark: MKPlacemark? {
        didSet {
            titleLabel.text = placemark?.name
            addressLabel.text = placemark?.address
        }
    }
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    var addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    // CARDEN: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        let stack = UIStackView(arrangedSubviews: [titleLabel, addressLabel])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 4
        
        addSubview(stack)
        stack.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 12)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
