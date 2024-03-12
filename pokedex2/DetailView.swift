//
//  DetailView.swift
//  PokèdexV2
//
//  Created by Austin Maynard on 3/11/24.
//

import SwiftUI

struct DetailView: View {
    var pokemon: Pokemon
    var body: some View {
        ZStack {
            Color.red
                                .ignoresSafeArea()
            ScrollView {
                
                VStack{
                    Text(pokemon.Name)
                                                .bold()
                                                .font(.largeTitle)
                    Text("\(pokemon.pokedexNumber)")
                        .bold()
                        
                    Image("\(pokemon.pokedexNumber)")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        VStack {
                            Text("Wieght")
                                .bold()
                                .font(.subheadline)
                            Text(pokemon.Wieght)
                        }
                        VStack {
                            Text("Hieght")
                                .bold()
                                .font(.subheadline)
                            Text(pokemon.Hieght)
                        }
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Typing")
                        .bold()
                        .font(.subheadline)
                    Text(pokemon.types)
                    Spacer()
                    Spacer()
                    Spacer()

                    Text("desc")
                        .bold()
                        .font(.subheadline)
                    Text(pokemon.DexEntry)
                    Spacer()
                    Spacer()
                    Spacer()

                    Text("routes found")
                        .bold()
                        .font(.subheadline)
                    Text(pokemon.RoutesFound)
                    

                }
            }
        }
    }
}

#Preview {
    DetailView(pokemon: MissingNo)
}
