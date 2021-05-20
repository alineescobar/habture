//
//  ModalPlastico.swift
//  habture
//
//  Created by Aline Osana Escobar on 19/05/21.
//

import SwiftUI

struct ModalVidro: View {
    @Environment(\.presentationMode) var presentationMode
    @State var openModalOrganico: Bool = false
    
    var body: some View {
        VStack{
            PersonalizedModal(
                bgColor: Color("Yellow"),
                shadowColor: Color("Orange1"),
                circleColor: Color("BackgroundColor"),
                circleStrokeColor: Color("Yellow"),
                buttonBgColor: Color("Purple2"),
                buttonShadowColor: Color("Purple3"),
                nomeImagem: "vidro",
                titulo: "Você sabia?",
                textos: ["Os vidros não são biodegradáveis e permanecem na natureza por cerca de dez mil anos.", "Para cada tonelada de vidro reciclado, gasta-se menos 70% do que se gastaria para fabricar mais vidro."],
                alturaMax: 480,
                imageWidth: 21,
                imageHeight: 42,
                temFonte: true,
                temCirculo: true,
                temCloseButton: true,
                fonte: "https://www1.folha.uol.com.br/seminariosfolha/2016/06/1784363-brasil-e-campeao-mundial-na-reciclagem-de-latas-de-aluminio.shtml",
                circleWithX: ContentView(viewRouter: ViewRouter())
            )
            
            Button(""){
                openModalOrganico.toggle()
            }
            .buttonStyle(CommonUseButton(text: "Coletar prêmio", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))
            .fullScreenCover(isPresented: $openModalOrganico){
                ModalOrganico()
            }
        }
    }
}

struct ModalVidro_Previews: PreviewProvider {
    static var previews: some View {
        ModalVidro()
            .previewDevice("iPhone 12")
        ModalVidro()
            .previewDevice("iPhone 8")
    }
}
