//
//  ModalQuizEnd.swift
//  habture
//
//  Created by Aline Osana Escobar on 17/05/21.
//

import SwiftUI

struct ModalQuizEnd: View {
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollectTrophy: Bool
    var telaAtual = ViewRouter()
    @Binding var acertos: Int
    @Environment(\.presentationMode) var presentationMode
    @State var openAwardsScreen: Bool = false
    
    var body: some View {
        ZStack {
            ZStack{
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
                        textos: ["Você respondeu \(acertos)/4 questões corretamente."],
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
                        if (acertos == 4){
                            UserDefaults.standard.set(true, forKey: "StorageCompletedCollectTrophy")
                            completedCollectTrophy = true
                        }
                        telaAtual.currentPage = .conquistas
                        openAwardsScreen.toggle()
                    }
                    .buttonStyle(CommonUseButton(text: completedCollectTrophy ? "Coletar troféu" : "Ver suas conquistas", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
                    .padding(EdgeInsets(top: 34, leading: 40, bottom: 0, trailing: 40))
                    .fullScreenCover(isPresented: $openAwardsScreen){
                        ContentView(
                            viewRouter: telaAtual,
                            completedCollectDestinoLixo: completedCollectDestinoLixo,
                            completedCollectTrophy: completedCollectTrophy
                        )
                    }
                }
            }
        }
    }
}

//struct ModalQuizEnd_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalQuizEnd(acertos: 1)
//    }
//}
