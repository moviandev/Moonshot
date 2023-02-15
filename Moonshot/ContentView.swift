//
//  ContentView.swift
//  Moonshot
//
//  Created by Matheus Viana on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
