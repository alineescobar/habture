//
//  ModalCongragulations.swift
//  habture
//
//  Created by Igor Marques Vicente on 11/05/21.
//

import SwiftUI

struct ModalCongragulations: View {
    var body: some View {
        VStack {
            
            ZStack {

                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 375, alignment: .center)
                    .padding(36)
                    .background(Color("Orange1"))
                    .cornerRadius(22)
                    .offset(y: 5)
                
                VStack {
                    HStack{
                        Button(action: {}, label: {
                            Image(systemName: "xmark.circle")
                                .resizable()
                                .frame(width: 30, height: 30, alignment: .center)
                                .foregroundColor(Color("Purple2"))
                        })
                        Spacer()
                    }
                    .padding(EdgeInsets(top: -22, leading: -28, bottom: -22, trailing: -22))

                    Text("Parabéns")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Purple2"))
                    
                    Text("Você recolheu todos os \nobjetos!")
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .frame(width: .infinity, height: 60)
                    
                    Text("Os vidros não são \nbiodegradáveis e \npermanecem na natureza \npor cerca de dez mil anos.")
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .frame(width: .infinity, height: 100)
                    
                    
                    Text("Para cada tonelada de vidro reciclado, gasta-se menos 70% do que se gastaria para fabricar mais vidro;")
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .frame(width: .infinity, height: 100)
                    
                    Text("Fonte:")
                        .font(.system(size: 10, design: .rounded))
                        .fontWeight(.regular)
                        .padding(.top)
                    
                    
                    Link("https://www.psdovidro.com.br/descubra-tudo-sobre-a-reciclagem-de-vidro/", destination: URL(fileURLWithPath: "https://www.psdovidro.com.br/descubra-tudo-sobre-a-reciclagem-de-vidro/"))
                        .foregroundColor(Color("Purple2"))
                        .font(.system(size: 10, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: .infinity, height: 25)

                }
                .frame(maxWidth: .infinity, maxHeight: 375, alignment: .center)
                .padding(36)
                .background(Color("Yellow"))
                .cornerRadius(22)
                
                GeometryReader { geometry in
                    Circle()
                        .position(x: geometry.size.width/2, y: geometry.size.height/2)
                        .frame(width: 80, height: 80, alignment: .center)
                        .foregroundColor(Color("Purple2"))
                        .offset(y: -230)
                }
                .frame(maxWidth: .infinity, maxHeight: 360, alignment: .center)
                
            }
            
            Spacer()
                .frame(height:34)
            
            Button(action: {}, label: {
                PersonalizedButton(text: "Continuar", height: 42, bgColor: Color("Purple2"), shadowColor: Color("Purple3"))
            })
            
            Spacer()
                .frame(height:14)
            
            Button(action: {}, label: {
                PersonalizedButton(text: "Voltar", height: 42, bgColor: Color("Purple3"), shadowColor: Color("Purple2"))
            })
        }
        .padding(40)
    }
    
}

struct ModalCongragulations_Previews: PreviewProvider {
    static var previews: some View {
        ModalCongragulations()
    }
}
