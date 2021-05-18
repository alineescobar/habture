//
//  Awards.swift
//  habture
//
//  Created by Igor Marques Vicente on 13/05/21.
//

import SwiftUI

struct Awards: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 70)
            
            Text("Conquistas")
                .fontWeight(.semibold)
                .font(.system(size: 22, design: .rounded))
                .foregroundColor(Color("Purple2"))
            
            ScrollView(showsIndicators: false) {
                
                Spacer()
                    .frame(height: 51)
                
                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .stroke(Color("Purple2"), lineWidth: 2)
                    .frame(height: 181)
                    .overlay(
                        ZStack {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .fill(Color("Purple2"))
                                .frame(width:257,height: 41)
                                .overlay(
                                    Text("Destino do lixo")
                                        .fontWeight(.bold)
                                        .font(.system(size: 18, design: .rounded))
                                        .foregroundColor(Color("BackgroundColor"))
                                )
                                .offset(y: -90.0)
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    .fill(Color.gray)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image(systemName: "rosette")
                                            .font(.title)
                                            .foregroundColor(.white)
                                    )
                                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                                    .padding(10)
                                
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    .fill(Color.gray)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image(systemName: "rosette")
                                            .font(.title)
                                            .foregroundColor(.white)
                                    )
                                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                                    .padding(10)
                                
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    .fill(Color.gray)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image(systemName: "rosette")
                                            .font(.title)
                                            .foregroundColor(.white)
                                    )
                                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                                    .padding(10)
                                
                            }
                        }
                    )
                    .padding(.horizontal,20)
                
                Spacer()
                    .frame(height: 51)
                
                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .stroke(Color("Orange1"), lineWidth: 2)
                    .frame(height: 181)
                    .overlay(
                        ZStack {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .fill(Color("Orange1"))
                                .frame(width:257,height: 41)
                                .overlay(
                                    Text("Alimentação consciente")
                                        .fontWeight(.bold)
                                        .font(.system(size: 18, design: .rounded))
                                        .foregroundColor(Color("BackgroundColor"))
                                )
                                .offset(y: -90.0)
                        }
                    )
                    .padding(.horizontal,20)
                
                Spacer()
                    .frame(height: 51)
                
                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .stroke(Color("Blue"), lineWidth: 2)
                    .frame(height: 181)
                    .overlay(
                        ZStack {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .fill(Color("Blue"))
                                .frame(width:257,height: 41)
                                .overlay(
                                    Text("Consumo sustentável")
                                        .fontWeight(.bold)
                                        .font(.system(size: 18, design: .rounded))
                                        .foregroundColor(Color("BackgroundColor"))
                                )
                                .offset(y: -90.0)
                        }
                    )
                    .padding(.horizontal,20)
                
                Spacer()
                    .frame(height: 51)
                
                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .stroke(Color("Pink"), lineWidth: 2)
                    .frame(height: 181)
                    .overlay(
                        ZStack {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .fill(Color("Pink"))
                                .frame(width:257,height: 41)
                                .overlay(
                                    Text("Consumo sustentável")
                                        .fontWeight(.bold)
                                        .font(.system(size: 18, design: .rounded))
                                        .foregroundColor(Color("BackgroundColor"))
                                )
                                .offset(y: -90.0)
                        }
                    )
                    .padding(.horizontal,20)
                
                Spacer()
                    .frame(height: 85)
            }
        }
    }
}

struct Awards_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Awards()
        }
    }
}
