//
//  Quiz.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Question: View {
    var questao: Pergunta
    
    @State var pressed: String = ""
    static var escolhida: String = ""
    
    var body: some View {
        VStack {
            Text(questao.textoQuestao)
                .font(.system(size: 22, design: .rounded))
                .multilineTextAlignment(.center)
                .frame(width: 260)
            Spacer()
                .frame(height: 48)
            
            ForEach(questao.alternativas, id: \.self) { alternativa in
                Button(""){
                    pressed = alternativa
                    Question.escolhida = pressed
                }.buttonStyle(AlternativeButton(isSelected: $pressed, text: alternativa, bgColor: Color("Orange1"), shadowColor: Color("Orange2")))
                .padding(.bottom, 9)
            }
        }
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Question(questao: pergunta01)
    }
}
