//
//  Onboarding1.swift
//  habture
//
//  Created by Julia Alberti Maia on 17/05/21.
//

import SwiftUI
import UIKit
import AVKit

struct Onboarding1: View {
    var body: some View {
        ZStack {
            Color("Green2")
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Aprenda algo\n novo")
                    .fontWeight(.bold)
                    .font(.system(size: 30, design: .rounded))
                    .foregroundColor(Color("BackgroundColor"))
                    .multilineTextAlignment(.center)
                
                Text("Comece essa aventura selecionando uma categoria que te ajude a ter uma vida mais sustentável!")
                    //.fontWeight(.bold)
                    .font(.system(size: 22, design: .rounded))
                    .foregroundColor(Color("BackgroundColor"))
                    .multilineTextAlignment(.center)
                    .padding()
                GIFView(gifName: "selection")
                    .frame(width: 280, height: 321, alignment:.center)
                    .padding(.bottom, 60)
            }.padding(20)
        }
    }
}


struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Onboarding1()
                .previewDevice("iPhone 8")
            Onboarding1()
                .previewDevice("iPhone 12")
        }
    }
}

