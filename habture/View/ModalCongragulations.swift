//
//  ModalCongragulations.swift
//  habture
//
//  Created by Igor Marques Vicente on 11/05/21.
//

import SwiftUI

struct ModalCongragulations: View {
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollectTrophy: Bool
    @Environment(\.presentationMode) var presentationMode
    @State var openSurvey: Bool = false
    
    var body: some View {
        ZStack {
            Image("bgCenarioPraiaOpaco")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea(.all)
            
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color("Green1"))
                        .frame(maxWidth: 300, maxHeight: 200)
                        .cornerRadius(22)
                        .offset(y: 5)
                    Rectangle()
                        .fill(Color("Green2"))
                        .frame(maxWidth: 300, maxHeight: 200)
                        .cornerRadius(22)
                        .overlay(
                            VStack {
                                Text("Parabéns!")
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 26, design: .rounded))
                                    Spacer()
                                        .frame(height: 28)
                                Text("Você coletou todos os itens e está pronto para praticar o que aprendeu!")
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 17, design: .rounded))
                            }.padding(.horizontal, 40)
                        )
                }
                
                Button(""){
                    openSurvey.toggle()
                }.buttonStyle(CommonUseButton(text: "Praticar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
                .padding(EdgeInsets(top: 32, leading: 40, bottom: 0, trailing: 40))
                .fullScreenCover(isPresented: $openSurvey){
                    Survey(
                        completedCollectDestinoLixo: $completedCollectDestinoLixo,
                        completedCollectTrophy: $completedCollectTrophy
                    )
                }
            }
        }
    }
}

//struct ModalCongragulations_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalCongragulations()
//    }
//}
