//
//  Categories.swift
//  habture
//
//  Created by Julia Alberti Maia on 10/05/21.
//

import SwiftUI

struct categories: View {
    @State var play: Bool =  false
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollectTrophy: Bool
    
    var body: some View {
        
        VStack{
            Spacer()
                .frame(height: 111)
            Text("Selecione uma categoria")
                .fontWeight(.semibold)
                .font(.system(size: 22, design: .rounded))
                .foregroundColor(Color("Purple2"))
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 32)
            
            ScrollView(showsIndicators: false) {
                
                Button(action: {
                    play.toggle()
                }) {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .fill(Color("Purple1"))
                        .frame(height: 117)
                        .overlay(
                            Text("Destino do lixo")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                        )
                }
                .fullScreenCover(isPresented: $play) {
                    Game(
                        completedCollectDestinoLixo: $completedCollectDestinoLixo,
                        completedCollectTrophy: $completedCollectTrophy
                    )
                }
                Spacer()
                    .frame(height: 14)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color("Orange1"))
                    .frame(height: 117)
                    .overlay(
                        VStack {
                            Text("Alimentação consciente")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.bottom, 2)
                            Text("EM BREVE!".uppercased())
                                .fontWeight(.bold)
                                .font(.system(size:18, design: .rounded))
                                .foregroundColor(Color("Purple3"))
                        }
                    )
                
                Spacer()
                    .frame(height: 14)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color("Blue"))
                    .frame(height: 117)
                    .overlay(
                        VStack {
                            Text("Consumo sustentável")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.bottom, 2)
                            Text("EM BREVE!".uppercased())
                                .fontWeight(.bold)
                                .font(.system(size:18, design: .rounded))
                                .foregroundColor(Color("Purple3"))
                        }
                        
                        
                    )
                
                Spacer()
                    .frame(height: 14)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color("Pink"))
                    .frame(height: 117)
                    .overlay(
                        VStack {
                            Text("Transporte alternativo")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.bottom, 2)
                            Text("EM BREVE!".uppercased())
                                .fontWeight(.bold)
                                .font(.system(size:18, design: .rounded))
                                .foregroundColor(Color("Purple3"))
                        }
                    )
            }
        }
        .padding(.horizontal,20)
    }
}

/*struct categories_Previews: PreviewProvider {
 static var previews: some View {
 categories()
 }
 }*/
