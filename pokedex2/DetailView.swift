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
                    Text("#\(pokemon.pokedexNumber)")
                        .bold()
                        .font(.system(size: 25))
                        
                    Image("\(pokemon.pokedexNumber)")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        VStack {
                            Text("Wieght")
                                .bold()
                                .font(.system(size: 30))
                            Text(pokemon.Wieght)
                                .font(.system(size: 25))
                        }
                        VStack {
                            Text("Hieght")
                                .bold()
                                .font(.system(size: 30))
                            Text(pokemon.Hieght)
                                .font(.system(size: 25))
                        }
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Typing")
                        .bold()
                        .font(.system(size: 30))
                    Text(pokemon.types)
                        .font(.system(size: 25))

                    Spacer()
                    Spacer()
                    Spacer()
                    Text("desc")
                        .bold()
                        .font(.system(size: 30))
                    Text(pokemon.DexEntry)
                        .font(.system(size: 25))
                    Spacer()
                    Spacer()
                    Spacer()

                    Text("routes found")
                        .bold()
                        .font(.system(size: 30))
                    Text(pokemon.RoutesFound)
                        .font(.system(size: 25))
                    

                }
            }.background(Color.red)
        }
    }
}

#Preview {
    DetailView(pokemon: MissingNo)
}
