//
//  ContentView.swift
//  RenderingElements
//
//  Created by Ramill Ibragimov on 12.10.2020.
//

import SwiftUI


let colors: [Color] = [.red, .green, .blue, .orange, .purple, .gray]
let timer = Timer.publish(every: 0.5, on: .current, in: .common).autoconnect()

struct ColoredLabel: View {
    @State private var counter = 0
    
    var body: some View {
        Text("\(counter)")
            .background(colors.randomElement() ?? .blue)
            .modifier(ErrorHeadlines())
            .onReceive(timer, perform: { _ in
                self.counter += 1
            })
    }
}

struct ErrorHeadlines: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .font(.largeTitle)
            .foregroundColor(Color.black)
            .shadow(radius: 2)
            .background(Color.blue.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black.opacity(0.2), lineWidth: 1)
            )
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ColoredLabel()
            
            DebugView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


