//
//  PersonalizedModal.swift
//  habture
//
//  Created by Aline Osana Escobar on 17/05/21.
//

import SwiftUI

struct PersonalizedModal: View {
    @Environment(\.presentationMode) var presentationMode
    @State var closeButton: Bool = false
    
    let bgColor, shadowColor, circleColor, circleStrokeColor, buttonBgColor, buttonShadowColor: Color
    let nomeImagem: String
    let titulo: String
    let textos: [String]
    let alturaMax, imageWidth, imageHeight: CGFloat
    let temFonte, temCirculo, temCloseButton: Bool
    let fonte: String
    let circleWithX: ContentView
    
    var body: some View {
        HStack{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(shadowColor)
                        .frame(maxWidth: .infinity, maxHeight: alturaMax)
                        .cornerRadius(22)
                        .offset(y: 5)
                    Rectangle()
                        .fill(bgColor)
                        .frame(maxWidth: .infinity, maxHeight: alturaMax)
                        .cornerRadius(22)
                        .overlay(
                            VStack{
                                ZStack{
                                    GeometryReader{ geometry in
                                        ZStack{
                                            if (temCirculo) {
                                                Circle()
                                                    .strokeBorder(circleStrokeColor, lineWidth: 4)
                                                    .background(Circle().fill(circleColor))
                                                    .position(x: geometry.size.width/2)
                                                    .frame(width: 80, height: 80)
                                                Image(nomeImagem)
                                                    .resizable()
                                                    .frame(width: imageWidth, height: imageHeight)
                                                    .position(x: geometry.size.width/2)
                                            }
                                        }
                                    }
                                    .frame(width:80, height: 51)
                                    
                                    HStack{
                                        Button(action: {
                                            closeButton.toggle()
                                        }, label: {
                                            Image(systemName: "xmark.circle")
                                                .resizable()
                                                .frame(width: 30, height: 30, alignment: .center)
                                                .foregroundColor(Color("Purple2"))
                                        })
                                    }
                                    .padding(.leading, -145)
                                    .fullScreenCover(isPresented: $closeButton){
                                        circleWithX
                                    }
                                }
                                VStack{
                                    Text(titulo)
                                        .font(.system(size: 26, design: .rounded))
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.center)
                                    Spacer()
                                        .frame(height: 17)
                                    
                                    ForEach(textos, id: \.self){ texto in
                                        Text(texto)
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 22, design: .rounded))
                                            .padding(EdgeInsets(top: 10, leading: 36, bottom: 0, trailing: 36))
                                        Spacer()
                                    }
                                    if (temFonte){
                                        Spacer()
                                        Group{
                                            Text("Fonte")
                                            Text(fonte)
                                                .multilineTextAlignment(.center)
                                                .padding(EdgeInsets(top: 0, leading: 19, bottom: 10, trailing: 19))
                                        }
                                        .font(.system(size: 10, design: .rounded))
                                    }
                                }
                            }
                        )
                }
            }
        }
        .padding(.horizontal, 40)
    }
}

struct PersonalizedModal_Previews: PreviewProvider {
    static var previews: some View {
        PersonalizedModal(
            bgColor: Color("Yellow"),
            shadowColor: Color("Orange1"),
            circleColor: Color("BackgroundColor"),
            circleStrokeColor: Color("Yellow"),
            buttonBgColor: Color("Purple2"),
            buttonShadowColor: Color("Purple3"),
            nomeImagem: "premioDestinoLixo",
            titulo: "Bom trabalho!",
            textos: ["Você respondeu 4/4 questões corretamente."],
            alturaMax: 200,
            imageWidth: 41,
            imageHeight: 53,
            temFonte: false,
            temCirculo: true,
            temCloseButton: true,
            fonte: "Fonte: https://cbn.globoradio.globo.com/media/audio/243607/apenas-1-do-lixo-organico-e-reaproveitado-no-brasi.htm",
            circleWithX: ContentView(viewRouter: ViewRouter())
        )
    }
}
