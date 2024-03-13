//
//  DualView.swift
//  pokedex2
//
//  Created by Austin Maynard on 3/13/24.
//

import SwiftUI
public var updatableImage = 0
//as of now unused and broken :3
struct DualView: View {

    var body: some View {
        HStack {
        
            ZStack {
                Color.blue
                Image("\(updatableImage)")
            }
            ZStack {
                ScrollView {
                    VStack {
                       
                        NavigationView {
                            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
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
        } .background(Color.blue)
            .ignoresSafeArea()
    }
}

#Preview {
    DualView()
}
