//
//  ListView.swift
//  Moonshot
//
//  Created by Matheus Viana on 17/02/23.
//

import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        VStack {
            List {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        HStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            
                            HStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Text(mission.formattedLaunchDate)
                                    .font(.headline)
                                    .foregroundColor(.primary.opacity(0.5))
                            }
                        }
                    }
                }
                .listRowBackground(Color.lightBackground)
            }
            .scrollContentBackground(.hidden)
            .background(.darkBackground)
        }

    }
}

struct ListView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        ListView(astronauts: astronauts, missions: missions)
    }
}
