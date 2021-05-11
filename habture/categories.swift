//
//  Categories.swift
//  habture
//
//  Created by Julia Alberti Maia on 10/05/21.
//

import SwiftUI

struct categories: View {
    //@State var x: Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text("Selecione uma \n     categoria")
                .fontWeight(.semibold)
                .font(.system(size: 28, design: .rounded))
                .foregroundColor(Color("A1"))
                .padding(40)
            Spacer()
            Button(action: {
                //self.x = true
            }) {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(Color("A1"))
                    .frame(width: 339, height: 102)
                    .overlay(
                        Text("Destino do lixo")
                            .fontWeight(.semibold)
                            .font(.system(size: 24, design: .rounded))
                            .frame(width: 339, height: 102, alignment:.center)
                            .foregroundColor(.white)
                    )
                    .padding(10)
            }
            Button(action: {
                //self.x = true
            }) {
                Text("x")
                    .frame(width: 339, height: 102, alignment:.center)
                    .foregroundColor(.black)
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color("A2"))
                            .frame(width: 339, height: 102)
                    )
                    .font(Font.custom("SF Pro Rounded", size: 40))
                    .padding(10)
            }
           
            Button(action: {
                //self.x = true
            }) {
                Text("x")
                    .frame(width: 339, height: 102, alignment:.center)
                    .foregroundColor(.black)
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color("A3"))
                            .frame(width: 339, height: 102)
                    )
                    .font(Font.custom("SF Pro Rounded", size: 40))
                    .padding(10)
            }
            
            Button(action: {
                //self.x = true
            }) {
                Text("x")
                    .frame(width: 339, height: 102, alignment:.center)
                    .foregroundColor(.black)
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color("A4"))
                            .frame(width: 339, height: 102)
                    )
                    .font(Font.custom("SF Pro Rounded", size: 40))
                    .padding(10)
            }//.fullScreenCover(isPresented: $x, content: {
             //   x()
          //})
            Spacer()
        }
    }
}

struct categories_Previews: PreviewProvider {
    static var previews: some View {
        categories()
    }
}
