//
//  Login.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI

struct Login: View {
    @State var openOnBoarding: Bool = false
    @AppStorage("sawOnBoarding") var sawOnBoarding: Bool = false

    var body: some View {
        ZStack{
            VStack{
                Image("ImageLogin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.5)
                    .ignoresSafeArea(.all)
                Spacer()
            }
            VStack{
                Spacer()
                Group{
                    Text("Transforme seu ") + Text("\nfuturo ").fontWeight(.bold) + Text("adotando um \n novo ") + Text("hábito")
                        .fontWeight(.bold)}
                    .font(.system(size: 26, design: .rounded))
                    .foregroundColor(Color("Purple2"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 120)
                Spacer()
                
                Image("rec")
                    .padding(.bottom, 40)
                Spacer()
                    .frame(height:160)
                
                Button(""){
                        openOnBoarding.toggle()
                }
                .buttonStyle(CommonUseButton(text: "Jogar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
                .padding(.horizontal, 20)
                .fullScreenCover(isPresented: $openOnBoarding){
                    if sawOnBoarding {
                        ContentView(viewRouter: ViewRouter())
                    } else {
                        MainOfOnboarding()
                    }
                }
                .padding(.horizontal, 40)
                
                Text("Criado por Aline Escobar, Carolina Nobre, Giovanni Madalozzo, Igor Vicente e Julia Alberti")
                    .font(.system(size: 13, design: .rounded))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 40, trailing: 40))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Green2"))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login().previewDevice("iPhone 12")
        Login().previewDevice("iPhone 8")
    }
}
