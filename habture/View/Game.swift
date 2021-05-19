//
//  Game.swift
//  habture
//
//  Created by Igor Marques Vicente on 12/05/21.
//

import SwiftUI

struct Game: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            GameFront()
                .zIndex(30)
            GeometryReader { geometry in
                
                Image("CenarioPraia")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea(.all)
                
                VStack {
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(Color("Purple2"))
                        })
                        
                        Spacer()
                        
                        Text("   Destino do lixo")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Purple2"))
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "gearshape")
                                .font(.title)
                                .foregroundColor(Color("Purple2"))
                        })
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
