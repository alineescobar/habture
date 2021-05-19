//
//  File.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive: Bool = false

    var body: some View {
        VStack{
            if self.isActive {
                Login()
            } else {
                Spacer()
                Image("Logo")
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Purple2"))
        .edgesIgnoringSafeArea(.all)
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
