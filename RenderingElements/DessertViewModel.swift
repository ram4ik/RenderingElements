//
//  DessertViewModel.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import Foundation

struct DessertViewModel: Codable, Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var rating: Int
}
