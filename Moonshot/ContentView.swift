//
//  ContentView.swift
//  Moonshot
//
//  Created by Matheus Viana on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack{
            Text("\(astronauts.count)")
                .padding()
            Text("\(missions.count)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
