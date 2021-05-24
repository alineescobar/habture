//
//  Onboarding2.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI

struct Onboarding2: View {
    
    @State var Proxima: Bool = false
    @State var abreContent: Bool = false
    
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
                Text("Por meio de atividades lúdicas, crie uma rotina mais saudável para sua vida!")
                    .font(.system(size: 22, design: .rounded))
                    .foregroundColor(Color("Purple2"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                GIFView(gifName: "ideia")
                    .frame(width: 280, height: 321, alignment:.center)
                    .padding(.bottom, 20)
                Button(""){
                    UserDefaults.standard.set(true, forKey: "sawOnBoarding")
                    abreContent.toggle()
                }.buttonStyle(CommonUseButton(text: "Começar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
                .padding(.horizontal, 20)
                .fullScreenCover(isPresented: $abreContent){
                    ContentView(viewRouter: ViewRouter())
                }
                
            }.padding(20)
        }
    }
}


struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
            .previewDevice("iPone 8")
        Onboarding2()
            .previewDevice("iPhone 12")
    }
}
