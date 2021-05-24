//
//  Game.swift
//  habture
//
//  Created by Igor Marques Vicente on 12/05/21.
//

import SwiftUI

struct Game: View {
    @Environment(\.presentationMode) var presentationMode
    @State var openModalPlastico: Bool = false
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollectTrophy: Bool
    @State var completedCollect: Bool = false
    @EnvironmentObject var a: Reloud

    var body: some View {
        ZStack {
            if openModalPlastico {
                Text(a.a)
                    .lineLimit(nil)
            } else {
                Text(a.a)
                    .lineLimit(nil)
            }
            GameFront(completedCollectDestinoLixo: $completedCollectDestinoLixo, completedCollect: $completedCollect)
                .zIndex(30)
                .onChange(of: completedCollect, perform: { value in
                    if value {
                        openModalPlastico.toggle()
                    }
                })
            GeometryReader { geometry in
                Image("CenarioPraia")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea(.all)
                VStack {
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(Color("Purple2"))
                        })
                        Spacer()

                        Text("   Destino do lixo")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Purple2"))
                        
                        Spacer()
                        
                        Button(action: {
                        }, label: {
                            Image(systemName: "gearshape")
                                .font(.title)
                                .foregroundColor(Color("Purple2"))
                        }).isHidden(true)
                    }
                }
                .fullScreenCover(isPresented: $openModalPlastico){
                    ModalPlastico(
                        completedCollectDestinoLixo: $completedCollectDestinoLixo,
                        completedCollectTrophy: $completedCollectTrophy,
                        completedCollect: $completedCollect
                    )
                }
                .padding(.horizontal)
            }
        }
    }
}
//
//struct Game_Previews: PreviewProvider {
//    static var previews: some View {
//        Game(completedDestinoLixo: false)
//    }
//}
