//
//  ContentView.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                NavigationLink(destination: MapView()) {
                    Text("Continue")
                        .cornerRadius(8)
                }
                .navigationTitle("MapView")
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
