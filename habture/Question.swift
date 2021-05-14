//
//  Quiz.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Question: View {
    let questao: Pergunta
    
    @State var pressed1: Bool = false
    @State var pressed2: Bool = false
    @State var pressed3: Bool = false
    @State var pressed4: Bool = false
    
    var body: some View {
        
        VStack {
            Text(questao.textoQuestao)
                .font(.system(size: 22, design: .rounded))
                .multilineTextAlignment(.center)
                .frame(width: 260)
            Spacer()
                .frame(height: 48)
            
            ForEach(questao.alternativas, id: \.self) { alternativa in
                PersonalizedButton(text: alternativa, height: 42, bgColor: pressed1 ? Color("Orange2") : Color("Orange1"), shadowColor: pressed1 ? Color("Orange1") : Color("Orange2"))
                    .onTapGesture {
                        pressed1.toggle()
                    }
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
