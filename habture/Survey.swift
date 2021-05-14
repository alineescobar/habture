//
//  Survey.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Survey: View {
    @State private var progess: Int = 45
    @State var atLeastOneSelected: Bool = false
    
    var body: some View {
        VStack{
            Text("Questionário")
                .font(.system(size: 22, design: .rounded))
                .foregroundColor(Color("Purple2"))
                .padding(.top, 30)
            
            VStack{
                HStack{
                    Button(action: {
                    }) {
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color("Purple2"))
                    }
                    ZStack(alignment:.leading){
                        Rectangle()
                            .foregroundColor(Color("Gray"))
                            .frame(width: 180, height: 9)
                            .cornerRadius(10)
                        
                        Rectangle()
                            .foregroundColor(Color("Purple2"))
                            .frame(width: CGFloat(progess), height: 9)
                            .cornerRadius(10)
                    }
                    .frame(width: 272)
                }
            }
            
            switch progess {
            case 45:
                Question(questionText: QUESTAO_01, alternativas: ALTERNATIVAS_01)
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 90:
                Question(questionText: QUESTAO_02, alternativas: ALTERNATIVAS_02)
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 135:
                Question(questionText: QUESTAO_03, alternativas: ALTERNATIVAS_03)
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 180:
                Question(questionText: QUESTAO_04, alternativas: ALTERNATIVAS_04)
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            default:
                Question(questionText: QUESTAO_01, alternativas: ALTERNATIVAS_01)
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            }
            
            
            PersonalizedButton(text: progess == 180 ? "Finalizar" : "Continuar", height: 42, bgColor: Color("Purple2"), shadowColor: Color("Purple3"))
                .onTapGesture {
                    if self.progess < 180 {
                        self.progess += 45
                    }
                }
                .frame(maxWidth: 300)
                .padding(.top, 64)
            Spacer()
        }
    }
}

struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}
