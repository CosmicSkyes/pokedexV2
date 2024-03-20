//
//  SwiftUIView.swift
//  PokèdexV2
//
//  Created by Austin Maynard on 3/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    var pokemon: Pokemon
  
    var body: some View {
        
        ZStack {
            //  Color.red
            //    .ignoresSafeArea()
            VStack {
                ZStack {
                    Image("ball2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 500)
                    //                        .cornerRadius(100.0)
                    Image("\(pokemon.pokedexNumber)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400,height: 400)
                }
                HStack {
                    Text("#\(pokemon.pokedexNumber)")
                        .font(.system(size: 30))
                    Text(pokemon.Name)
                        .font(.system(size: 30))
                    
                }
                
                
            }
        }
    }
}
//need to add a design akin to oras
#Preview {
    SwiftUIView(pokemon: MissingNo)
}
