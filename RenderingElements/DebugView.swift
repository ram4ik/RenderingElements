//
//  DebugView.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import SwiftUI

struct DebugView: View {
    @State private var toggleValue = false
    
    var body: some View {
        Toggle(isOn: $toggleValue, label: {
            Text("Toggle a value")
        })
        .debugPrint(toggleValue)
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
