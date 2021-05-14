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
                .frame(height: 40)
            Text("Conquistas")
                .fontWeight(.semibold)
                .font(.system(size: 28, design: .rounded))
                .foregroundColor(Color("Brown"))
                .padding(.bottom)
            
            ZStack {
                Rectangle()
                    .fill(Color("Brown"))
                    .border(Color.black, width: 15)
                    .cornerRadius(20)
                    .frame(width: .infinity, height: 450, alignment: .center)
                    .overlay(
                        VStack {
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
                        .padding(10)
                    )
                    .padding(30)
            }
            Spacer()
        }
    }
}

struct Awards_Previews: PreviewProvider {
    static var previews: some View {
        Awards()
    }
}
