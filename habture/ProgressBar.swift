//
//  progressBar.swift
//  habture
//
//  Created by Julia Alberti Maia on 11/05/21.
//

import SwiftUI

struct progressBar: View {
    
    @State private var progess = 0
    @State private var currentProgress = 0
    
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    //print("Edit button was tapped")
                }) {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.black)
                }
                ZStack(alignment:.leading){
                    Rectangle()
                        .foregroundColor(Color(.black))
                        .frame(width: 180, height: 9)
                        .cornerRadius(10)
                    
                    LinearGradient(gradient: Gradient(colors: [
                        progess < 180 ? .orange : Color(.systemTeal),
                        progess < 180 ? .pink : .blue
                    ]),
                    startPoint: .top, endPoint: .bottom)
                    .frame(width: CGFloat(progess), height: 9)
                    .cornerRadius(10)
                }
                .frame(width: 272)
                .onTapGesture { //aqui teria que mudar para as perguntas
                    if self.progess < 180 {
                        self.progess += 45
                        self.currentProgress += 1
                    }
                }
            }
        }
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        progressBar()
    }
}
