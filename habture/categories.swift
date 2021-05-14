//
//  Categories.swift
//  habture
//
//  Created by Julia Alberti Maia on 10/05/21.
//

import SwiftUI

struct categories: View {
    @State var play: Bool =  false
    
    var body: some View {
        
        VStack{
            Spacer()
                .frame(height: 111)
            Text("Selecione uma categoria")
                .fontWeight(.bold)
                .font(.system(size: 26, design: .rounded))
                .foregroundColor(Color("Purple2"))
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 32)
            
            ScrollView(showsIndicators: false) {
                
                Button(action: {
                    //self.x = true
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
                Spacer()
                    .frame(height: 14)
                Button(action: {
                    //self.x = true
                }) {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .fill(Color("Orange1"))
                        .frame(height: 117)
                        .overlay(
                            Text("Alimentação consciente")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                        )
                }
                
                Spacer()
                    .frame(height: 14)
                
                Button(action: {
                    //self.x = true
                }) {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .fill(Color("Blue"))
                        .frame(height: 117)
                        .overlay(
                            Text("Consumo sustentável")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                        )
                }
                
                Spacer()
                    .frame(height: 14)
                
                Button(action: {
                    //self.x = true
                }) {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .fill(Color("Pink"))
                        .frame(height: 117)
                        .overlay(
                            Text("Transporte alternativo")
                                .fontWeight(.medium)
                                .font(.system(size: 22, design: .rounded))
                                .foregroundColor(.white)
                        )
                }
            }
        }
        .padding(.horizontal,20)
    }
}

struct categories_Previews: PreviewProvider {
    static var previews: some View {
        categories()
    }
}
