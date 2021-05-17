//
//  ModalQuizEnd.swift
//  habture
//
//  Created by Aline Osana Escobar on 17/05/21.
//

import SwiftUI

struct ModalQuizEnd: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .fill(Color("Orange1"))
                    .frame(maxWidth: .infinity, maxHeight: 209)
                    .cornerRadius(22)
                    .offset(y: 5)
                Rectangle()
                    .fill(Color("Yellow"))
                    .frame(maxWidth: .infinity, maxHeight: 209)
                    .cornerRadius(22)
                    .overlay(
                        VStack{
                            VStack{
                                GeometryReader{ geometry in
                                    Circle()
                                        .fill(Color("Purple2"))
                                        .position(x: geometry.size.width/2)
                                        .frame(width: 80, height: 80)
                                    Image("premio")
                                        .position(x: geometry.size.width/2)
                                }
                                .frame(width:80, height: 51)
                            }
                            VStack{
                                Text("Bom trabalho!")
                                    .font(.system(size: 26, design: .rounded))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Spacer()
                                    .frame(height: 22)
                                Text("Você respondeu 4/4 questões corretamente.")
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 22, design: .rounded))
                                    .padding(.horizontal, 36)
                                Spacer()
                            }
                        }
                    )
            }
            Button(""){
                
            }.buttonStyle(CommonUseButton(text: "Finalizar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .padding(.top, 34)
        }
    }
}

struct ModalQuizEnd_Previews: PreviewProvider {
    static var previews: some View {
        ModalQuizEnd()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        ModalQuizEnd()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}
