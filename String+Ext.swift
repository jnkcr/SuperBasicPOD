//
//  String+Ext.swift
//  SuperBasicPOD
//
//  Created by Jan Kučera on 09.02.2023.
//

import Foundation

extension String {
    public func isMyNameWorthBeingMentor() -> Bool {
        let regex = "[A-Z0-9a-z._-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,63}"
        let predicate  = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: self)
    }
}
