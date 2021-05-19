//
//  ModalQuizEnd.swift
//  habture
//
//  Created by Aline Osana Escobar on 17/05/21.
//

import SwiftUI

struct ModalQuizEnd: View {
    @Environment(\.presentationMode) var presentationMode
    @State var openScreen: Bool = false
    
    var body: some View {
        ZStack {
            ZStack{
                HStack{
                    Color.white
                }.ignoresSafeArea()
                .background(Color.clear)
                VStack{
                    PersonalizedModal(
                        bgColor: Color("Yellow"),
                        shadowColor: Color("Orange1"),
                        circleColor: Color("BackgroundColor"),
                        circleStrokeColor: Color("Yellow"),
                        buttonBgColor: Color("Purple2"),
                        buttonShadowColor: Color("Purple3"),
                        nomeImagem: "premioDestinoLixo",
                        titulo: "Bom trabalho!",
                        textos: ["Você respondeu 1/4 questões corretamente."],
                        alturaMax: 200,
                        imageWidth: 41,
                        imageHeight: 53,
                        temFonte: false,
                        temCirculo: true,
                        temCloseButton: true,
                        fonte: "",
                        circleWithX: ContentView(viewRouter: ViewRouter())
                    )
                    
                    Button(""){
                    }
                    .buttonStyle(CommonUseButton(text: "Coletar troféu", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
                    .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))

                }
            }
        }
    }
}

struct ModalQuizEnd_Previews: PreviewProvider {
    static var previews: some View {
        ModalQuizEnd()
    }
}
