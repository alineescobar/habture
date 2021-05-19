//
//  ModalPlastico.swift
//  habture
//
//  Created by Aline Osana Escobar on 19/05/21.
//

import SwiftUI

struct ModalOrganico: View {
    var body: some View {
        VStack{
            PersonalizedModal(
                bgColor: Color("Yellow"),
                shadowColor: Color("Orange1"),
                circleColor: Color("BackgroundColor"),
                circleStrokeColor: Color("Yellow"),
                buttonBgColor: Color("Purple2"),
                buttonShadowColor: Color("Purple3"),
                nomeImagem: "organico",
                titulo: "Você sabia?",
                textos: ["Apenas 1% do lixo orgânico é reaproveitado no Brasil. Mais da metade dos resíduos coletados no país é composto de restos de alimentos. A decomposição desse material gera, por ano, a mesma quantidade de gases de efeito estufa produzida por sete milhões de carros."],
                alturaMax: 500,
                imageWidth: 28,
                imageHeight: 43,
                temFonte: true,
                temCirculo: true,
                temCloseButton: true,
                fonte: "https://cbn.globoradio.globo.com/media/audio/243607/apenas-1-do-lixo-organico-e-reaproveitado-no-brasi.htm",
                circleWithX: ContentView(viewRouter: ViewRouter())
            )
            
            Button(""){
            }
            .buttonStyle(CommonUseButton(text: "Coletar prêmio", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))

        }
    }
}
//reduzir texto
struct ModalOrganico_Previews: PreviewProvider {
    static var previews: some View {
        ModalOrganico()
            .previewDevice("iPhone 12")
        ModalOrganico()
            .previewDevice("iPhone 8")
    }
}
