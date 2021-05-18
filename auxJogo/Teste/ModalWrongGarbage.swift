//
//  ModalWrongGarbage.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 18/05/21.
//

import SwiftUI

struct ModalWrongGarbage: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                RoundedRectangle(cornerRadius: 22)
                    .foregroundColor(Color(red: 173/255, green: 204/255, blue: 84/255))
                    .frame(width: 257, height: 76, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .position(x: geometry.size.width/2, y: geometry.size.height/1.98)
                Text("Lixeira errada!")
                    .font(.system(size: 15, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .position(x: geometry.size.width/2, y: geometry.size.height/1.98)
            }
        }
    }
}

struct ModalWrongGarbage_Previews: PreviewProvider {
    static var previews: some View {
        ModalWrongGarbage()
    }
}
