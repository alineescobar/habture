//
//  Onboarding2.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI

struct Onboarding2: View {
    
    @State var Proxima: Bool = false
    
    var body: some View {
        ZStack{
            Color("Yellow")
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Estimule seu\n cérebro")
                    .fontWeight(.bold)
                    .font(.system(size: 30, design: .rounded))
                    .foregroundColor(Color("Purple2"))
                    .multilineTextAlignment(.center)
                    .padding(5)
                Text("Por meio de atividades lúdicas, crie uma rotina mais saudável para sua vida! ")
                    //.fontWeight(.bold)
                    .font(.system(size: 22, design: .rounded))
                    .foregroundColor(Color("Purple2"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                GIFView(gifName: "ideia")
                    .frame(width: 280, height: 321, alignment:.center)
                    .padding(.bottom, 20)
                Button(
                    action: {self.Proxima = true})
                {
                    Text("Começar")
                        .frame(width: 296, height: 42, alignment:.center)
                        .background(Color("Purple2"))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                }
                .padding(.bottom)
                
            }.padding(20)
        }
    }
}


struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
        Onboarding2()
            .previewDevice("iPhone 12")
    }
}
