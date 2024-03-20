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
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    Text("#\(pokemon.pokedexNumber)")
                        .bold()
                        .font(.system(size: 20))
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
                                    .font(.system(size: 30))
                                    .foregroundStyle(.red)
                                Text(pokemon.Weight)
                                    .font(.system(size: 20))
                                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                                    .foregroundColor(.red)
                            }
                           
                            VStack {
                                Text("Hieght")
                                    .bold()
                                    .font(.system(size: 30))
                                    .foregroundStyle(.red)
                                Text(pokemon.Height)
                                    .font(.system(size: 20))
                                .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                                .foregroundStyle(.red)
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Typing")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundStyle(.red)
                    Text(pokemon.types)
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                        .foregroundStyle(.red)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("desc")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundStyle(.red)
                    Text(pokemon.DexEntry)
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                        .foregroundStyle(.red)
                    Spacer()
                    Spacer()
                    Spacer()

                    Text("routes found")
                        .bold()
                        .font(.system(size: 30))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                        .foregroundStyle(.red)
                    Text(pokemon.RoutesFound)
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 75))
                        .foregroundStyle(.red)
                }.background(Color.white)
            }.background(Color.red)
        }
    }
}

#Preview {
    DetailView(pokemon: MissingNo)
}
