//
//  ContentView.swift
//  PokèdexV2
//
//  Created by Austin Maynard on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                NavigationView {
                    VStack(alignment: .center, spacing: 5) {
                            List(kantoPokemon){
                                pokemon_l in
                                NavigationLink {
                                    DetailView(pokemon: pokemon_l)
                                } label: {
                                    SwiftUIView(pokemon: pokemon_l)
                                }

                            }
                        }
                     
                }
                
            }
        }
    }
}
//need to add black bacground with red borders
#Preview {
    ContentView()
}
