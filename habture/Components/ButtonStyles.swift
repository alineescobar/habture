//
//  ButtonStyles.swift
//  habture
//
//  Created by Aline Osana Escobar on 14/05/21.
//

import SwiftUI

struct CommonUseButton: ButtonStyle {
    let text: String
    let bgColor, shadowColor: Color
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            configuration
                .label
            Rectangle()
                .fill(configuration.isPressed ? bgColor : shadowColor)
                .frame(maxWidth: .infinity, maxHeight: 42)
                .cornerRadius(31)
            
            Rectangle()
                .fill(configuration.isPressed ? shadowColor: bgColor)
                .frame(maxWidth: .infinity, maxHeight: 42)
                .cornerRadius(31)
                .overlay(
                    Text(text)
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BackgroundColor"))
                        .padding()
                )
                .offset(y: -5)
        }
    }
}

struct AlternativeButton: ButtonStyle {
    @Binding var isSelected: String
    let text: String
    let bgColor, shadowColor: Color
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            configuration
                .label
            Rectangle()
                .fill(isSelected == text ? bgColor : shadowColor)
                .frame(maxWidth: .infinity, maxHeight: 42)
                .cornerRadius(31)
            
            Rectangle()
                .fill(isSelected == text ? shadowColor: bgColor)
                .frame(maxWidth: .infinity, maxHeight: 42)
                .cornerRadius(31)
                .overlay(
                    Text(text)
                        .font(.system(size: 17, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BackgroundColor"))
                        .padding()
                )
                .offset(y: -5)
        }
        .onTapGesture {
            isSelected = text
        }
    }
}
