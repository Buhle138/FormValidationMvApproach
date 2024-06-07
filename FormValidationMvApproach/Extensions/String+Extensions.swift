//
//  String+Extensions.swift
//  FormValidationMvApproach
//
//  Created by Buhle Radzilani on 2024/06/07.
//

import Foundation

extension String{
    var isValidEmail: Bool{
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
        
    }
}
