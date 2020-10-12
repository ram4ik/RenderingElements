//
//  Extensions.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import SwiftUI

extension View {
    func debugPrint(_ params: Any ...) -> Self {
        
        print(params)
        return self
    }
}

extension View {
    func comment(_ comment: String) -> Self {
        return self
    }
}

extension DessertViewModel {
    static var icecream: DessertViewModel {
        return DessertViewModel(name: "Ice Cream", image: "Turtle", rating: 3)
    }
}
