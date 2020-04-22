//
//  User .swift
//  Trogon
//
//  Created by carden pierre-vil on 4/22/20.
//  Copyright © 2020 Carden Pierre-Vil. All rights reserved.
//

struct User {
    let fullname: String
    let email: String
    let accountType: Int
    
    init(dictionary: [String: Any]) {
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.accountType = dictionary["accountType"] as? Int ?? 0
    }
}
