//
//  Quiz.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Question: View {
    @State var pressed1: Bool = false
    @State var pressed2: Bool = false
    @State var pressed3: Bool = false
    @State var pressed4: Bool = false
    
    var body: some View {
        VStack {
            Text(QUESTAO_01)
                .font(.system(size: 22, design: .rounded))
                .multilineTextAlignment(.center)
                .frame(width: 260)
            Spacer()
                .frame(height: 48)
            
            PersonalizedButton(text: ALTERNATIVAS_01[0], height: 42, bgColor: pressed1 ? Color("Orange2") : Color("Orange1"), shadowColor: pressed1 ? Color("Orange1") : Color("Orange2"))
                .onTapGesture {
                    pressed1.toggle()
                }
            PersonalizedButton(text: ALTERNATIVAS_01[1], height: 42, bgColor: pressed2 ? Color("Orange2") : Color("Orange1"), shadowColor: pressed2 ? Color("Orange1") : Color("Orange2"))
                .onTapGesture {
                    pressed2.toggle()
                }
            PersonalizedButton(text: ALTERNATIVAS_01[2], height: 42,  bgColor: pressed3 ? Color("Orange2") : Color("Orange1"), shadowColor: pressed3 ? Color("Orange1") : Color("Orange2"))
                .onTapGesture {
                    pressed3.toggle()
                }
            
            PersonalizedButton(text: ALTERNATIVAS_01[3], height: 42,  bgColor: pressed4 ? Color("Orange2") : Color("Orange1"), shadowColor: pressed4 ? Color("Orange1") : Color("Orange2"))
                .onTapGesture {
                    pressed4.toggle()
                }
        }
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Question()
    }
}
