//
//  Survey.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Survey: View {
    @State private var progess: Int = 45
    @State var atLeastOneSelected: Bool = true
    
    
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
                Question(questao: perguntasQuestionario[0])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 90:
                Question(questao: perguntasQuestionario[1])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 135:
                Question(questao: perguntasQuestionario[2])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 180:
                Question(questao: perguntasQuestionario[3])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            default:
                Question(questao: perguntasQuestionario[0])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            }
            
            Button(""){
                if (atLeastOneSelected){
                    if self.progess < 180 {
                        self.progess += 45
                    }
                }
            }.buttonStyle(CommonUseButton(text: progess == 180 ? "Finalizar" : "Continuar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
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
