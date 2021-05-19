//
//  Game.swift
//  habture
//
//  Created by Igor Marques Vicente on 12/05/21.
//

import SwiftUI

struct Game: View {
    @Environment(\.presentationMode) var presentationMode
    @State var openModal: Bool = false
    @State var openModalPlastico: Bool = false
    @Binding var completedCollectDestinoLixo: Bool
    @EnvironmentObject var a: Reloud

    init(completedCollectDestinoLixo: Binding<Bool>) {
        self._completedCollectDestinoLixo = completedCollectDestinoLixo
    }
    
    var body: some View {
        ZStack {
            if openModalPlastico {
                Text(a.a)
                    .lineLimit(nil)
            } else {
                Text(a.a)
                    .lineLimit(nil)
            }
            GameFront(completedCollectDestinoLixo: $completedCollectDestinoLixo)
                .zIndex(30)
                .onChange(of: completedCollectDestinoLixo, perform: { value in
                    print(value)
                    if value {
                        openModalPlastico.toggle()
                    }
                    print(openModalPlastico)
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
                            openModal.toggle()
                        }, label: {
                            Image(systemName: "gearshape")
                                .font(.title)
                                .foregroundColor(Color("Purple2"))
                        })
                    }
                }.fullScreenCover(isPresented: $openModalPlastico){
                    ModalPlastico()
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
