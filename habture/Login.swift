//
//  Login.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI

struct Login: View {
    @State var MainOfOnboarding: Bool = false
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
                    Text("Transforme seu ") + Text("\nfuturo ").fontWeight(.bold) + Text("adotando um \n novo ") + Text("hábito").fontWeight(.bold)}
                    .font(.system(size: 26, design: .rounded))
                    .foregroundColor(Color("Purple2"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 120)
                Spacer()
                Image("rec")
                    .padding(.bottom, 40)
                Spacer()
                Button(
                    action: {self.MainOfOnboarding = true})
                {
                    Text("Próximo")
                        .frame(width: 280, height: 50, alignment:.center)
                        .background(Color("Purple2"))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                }
                .padding(.bottom, 35)
                Text("Criado por Aline Escobar, Carolina Nobre, Giovanni Madalozzo, Igor Vicente e \nJulia Alberti")
                    .padding(10)
                    .padding(.bottom, 30)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Green2"))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login().previewDevice("iPhone 8")
        Login().previewDevice("iPhone 12")
    }
}
