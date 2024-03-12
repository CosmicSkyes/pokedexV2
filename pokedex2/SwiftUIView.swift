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
            Color.red
                .ignoresSafeArea()
            VStack {
                Image("\(pokemon.pokedexNumber)")
                Text(pokemon.Name)
                
            }
        }.background(.black)
    }
}

#Preview {
    SwiftUIView(pokemon: MissingNo)
}
