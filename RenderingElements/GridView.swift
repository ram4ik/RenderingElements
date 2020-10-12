//
//  GridView.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 50, content: {
                ForEach(0..<25) { _ in
                    Divider()
                }
            })
            
            HStack(alignment: .center, spacing: 50, content: {
                ForEach(0..<25) { _ in
                    Divider()
                }
            })
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridView()
                .previewDevice("iPhone SE")
            GridView()
                .previewDevice("iPhone XS")
        }
    }
}
