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
        
            Color.blue
                                .ignoresSafeArea()
            ScrollView {
                
                VStack{
                    Text(pokemon.Name)
                        .bold()
                        .font(.custom("Ketchum", size: 50))
                        .foregroundStyle(.white)
                    
                    Text("#\(pokemon.pokedexNumber)")
                        .bold()
                        .font(.custom("Ketchum", size: 30))
                        .foregroundStyle(.white)
                    ZStack {
                            Image("ball2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500,height: 500)

                        Image("\(pokemon.pokedexNumber)")
                            .resizable()
                            .scaledToFit()
                        
                    }
                }

                VStack{
                    ZStack {
                        Color.white
                        HStack {
                            VStack {
                                Text("Wieght")
                                    .bold()
                                    .font(.custom("Pokemon Classic", size: 30))

                                    
                                Text(pokemon.Weight)
                                    .font(.custom("Pokemon Classic", size: 15))
                                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                            }
                           
                            VStack {
                                Text("Hieght")
                                    .bold()
                                    .font(.custom("Pokemon Classic", size: 30))
                                Text(pokemon.Height)
                                    .font(.custom("Pokemon Classic", size: 15))
                                .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Typing")
                        .bold()
                        .font(.custom("Pokemon Classic", size: 30))
                    Text(pokemon.types)
                        .font(.custom("Pokemon Classic", size: 15))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("desc")
                        .bold()
                        .font(.custom("Pokemon Classic", size: 30))
                    
                    Text(pokemon.DexEntry)
                        .font(.custom("Pokemon Classic", size: 20))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                    Spacer()
                    Spacer()
                    Spacer()

                    Text("routes found")
                        .bold()
                        .font(.custom("Pokemon Classic", size: 30))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                    Text(pokemon.RoutesFound)
                        .font(.custom("Pokemon Classic", size: 20))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                }.background(Color.white)
            }.background(Color.red)
        }
    }
}

#Preview {
    DetailView(pokemon: MissingNo)
}
