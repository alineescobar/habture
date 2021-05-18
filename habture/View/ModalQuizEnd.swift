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
        VStack {
            VStack{
                ZStack{
                    PersonalizedModal(
                        bgColor: Color("Yellow"),
                        shadowColor: Color("Orange1"),
                        circleColor: Color("Purple2"),
                        circleStrokeColor: Color("Yellow"),
                        buttonBgColor: Color("Purple2"),
                        buttonShadowColor: Color("Purple3"),
                        nomeImagem: "premio",
                        titulo: "Bom trabalho!",
                        textos: ["Os vidros não são biodegradáveis e permanecem na natureza por cerca de dez mil anos.", "Para cada tonelada de vidro reciclado, gasta-se menos 70% do que se gastaria para fabricar mais vidro;"],
                        alturaMax: 500,
                        temFonte: true,
                        temCirculo: true,
                        fonte: "https://www.psdovidro.com.br/descubra-tudo-sobre-a-reciclagem-de-vidro/",
                        circleWithX: ContentView(viewRouter: ViewRouter()),
                        buttonText: "Finalizar",
                        buttonDestination: ContentView(viewRouter: ViewRouter())
                    )
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
