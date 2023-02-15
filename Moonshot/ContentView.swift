//
//  ContentView.swift
//  Moonshot
//
//  Created by Matheus Viana on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("Detail view")
            } label: {
                Text("Hello, world!")
                    .padding()
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
