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
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Purple2"))
                }
                ZStack(alignment:.leading){
                    Rectangle()
                        .foregroundColor(Color("Gray"))
                        .frame(width: 180, height: 9)
                        .cornerRadius(10)

                    Rectangle()
                        .foregroundColor(Color("Purple2"))
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
