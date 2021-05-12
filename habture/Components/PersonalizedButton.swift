//
//  PersonalizedButton.swift
//  habture
//
//  Created by Igor Marques Vicente on 12/05/21.
//

import SwiftUI

struct PersonalizedButton: View {
    let text: String
    let height: CGFloat
    let bgColor: Color
    let shadowColor: Color
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(shadowColor)
                .frame(maxWidth: .infinity, maxHeight: height)
                .cornerRadius(31)
            
            Rectangle()
                .fill(bgColor)
                .frame(maxWidth: .infinity, maxHeight: height)
                .cornerRadius(31)
                .overlay(
                    Text(text)
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("BackgroundColor"))
                        .padding()
                )
                .offset(y: -5)
        }
    }
}

struct PersonalizedButton_Previews: PreviewProvider {
    static var previews: some View {
        PersonalizedButton(text: "Continuar", height: 60, bgColor: Color("Purple2"), shadowColor: Color("Purple3"))
    }
}
