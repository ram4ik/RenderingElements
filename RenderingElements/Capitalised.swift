//
//  Capitalised.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import Foundation

@propertyWrapper
struct Capitalised {
    
    private var value: String
    
    init(wrappedValue value: String) {
        self.value = value.capitalized
    }
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.capitalized }
    }
}
