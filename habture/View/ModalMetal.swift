//
//  ModalPlastico.swift
//  habture
//
//  Created by Aline Osana Escobar on 19/05/21.
//

import SwiftUI

struct ModalMetal: View {
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
                textos: ["O Brasil é campeão mundial na reciclagem de latas de alumínio."],
                alturaMax: 300,
                imageWidth: 24,
                imageHeight: 60,
                temFonte: true,
                temCirculo: true,
                temCloseButton: true,
                fonte: "https://www1.folha.uol.com.br/seminariosfolha/2016/06/1784363-brasil-e-campeao-mundial-na-reciclagem-de-latas-de-aluminio.shtml",
                circleWithX: ContentView(viewRouter: ViewRouter())
            )
            
            Button(""){
            }
            .buttonStyle(CommonUseButton(text: "Coletar prêmio", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))

        }
    }
}

struct ModalMetal_Previews: PreviewProvider {
    static var previews: some View {
        ModalMetal()
            .previewDevice("iPhone 12")
        ModalMetal()
            .previewDevice("iPhone 8")
    }
}
