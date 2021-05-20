//
//  ModalPlastico.swift
//  habture
//
//  Created by Aline Osana Escobar on 19/05/21.
//

import SwiftUI

struct ModalPlastico: View {
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollectTrophy: Bool
    @Environment(\.presentationMode) var presentationMode
    @State var openModalMetal: Bool = false
    
    var body: some View {
        VStack{
            PersonalizedModal(
                bgColor: Color("Yellow"),
                shadowColor: Color("Orange1"),
                circleColor: Color("BackgroundColor"),
                circleStrokeColor: Color("Yellow"),
                buttonBgColor: Color("Purple2"),
                buttonShadowColor: Color("Purple3"),
                nomeImagem: "plastico",
                titulo: "Você sabia?",
                textos: ["Uma garrafa PET pode demorar, segundo o Ibama, de 200 a 600 anos para se decompor no meio ambiente."],
                alturaMax: 320,
                imageWidth: 22,
                imageHeight: 44,
                temFonte: true,
                temCirculo: true,
                temCloseButton: true,
                fonte: "https://www.camara.leg.br/tv/427087-garrafas-pet/",
                circleWithX: ContentView(viewRouter: ViewRouter())
            )
            
            Button(""){
                openModalMetal.toggle()
            }
            .buttonStyle(CommonUseButton(text: "Coletar prêmio", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))
            .fullScreenCover(isPresented: $openModalMetal){
                ModalMetal(
                    completedCollectDestinoLixo: $completedCollectDestinoLixo,
                    completedCollectTrophy: $completedCollectTrophy
                )
            }

        }
    }
}

//struct ModalPlastico_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalPlastico()
//            .previewDevice("iPhone 12")
//        ModalPlastico()
//            .previewDevice("iPhone 8")
//    }
//}
