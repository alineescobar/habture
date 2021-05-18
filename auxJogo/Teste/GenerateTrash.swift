//
//  GenerateTrash.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 14/05/21.
//

import SwiftUI

struct GenerateTrash: View {
    @Binding var countAll: Int
    @Binding var wrongCollision: Bool
    let plasticX: CGFloat
    let plasticY: CGFloat
    let glassX: CGFloat
    let glassY: CGFloat
    let metalX: CGFloat
    let metalY: CGFloat
    let organicX: CGFloat
    let organicY: CGFloat
    let screenHeight: CGFloat
    let screenWidth: CGFloat
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat, countAll: Binding<Int>, wrongCollision: Binding<Bool>){
        self._countAll = countAll
        self._wrongCollision = wrongCollision
        self.plasticX = plasticX
        self.plasticY = plasticY
        self.glassX = glassX
        self.glassY = glassY
        self.metalX = metalX
        self.metalY = metalY
        self.organicX = organicX
        self.organicY = organicY
        self.screenWidth = plasticX*8/1.25
        self.screenHeight = plasticY*5/4
    }
    
    var body: some View {
        Trash(x: self.screenWidth*0.1*1, y: self.screenHeight*(0.5+((0.75-0.5)/2)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 37, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*2, y: self.screenHeight*(0.5+((0.75-0.5)/3)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 45, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*3, y: self.screenHeight*(0.5+((0.75-0.5)/4)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 12, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*4, y: self.screenHeight*(0.5+((0.75-0.5)/5)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 0, wrongCollision: self.$wrongCollision)
        
        Trash(x: self.screenWidth*0.1*5, y: self.screenHeight*(0.5+((0.75-0.5)/2)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 89, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*6, y: self.screenHeight*(0.5+((0.75-0.5)/3)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 134, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*7, y: self.screenHeight*(0.5+((0.75-0.5)/4)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 253, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*8, y: self.screenHeight*(0.5+((0.75-0.5)/5)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 301, wrongCollision: self.$wrongCollision)
        
        GenerateTrash2(plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, count: self.$countAll, wrongCollision: self.$wrongCollision)
    }
}

struct GenerateTrash2: View {
    @Binding var countAll: Int
    @Binding var wrongCollision: Bool
    let plasticX: CGFloat
    let plasticY: CGFloat
    let glassX: CGFloat
    let glassY: CGFloat
    let metalX: CGFloat
    let metalY: CGFloat
    let organicX: CGFloat
    let organicY: CGFloat
    let screenHeight: CGFloat
    let screenWidth: CGFloat
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat, count: Binding<Int>, wrongCollision: Binding<Bool>){
        self._countAll = count
        self._wrongCollision = wrongCollision
        self.plasticX = plasticX
        self.plasticY = plasticY
        self.glassX = glassX
        self.glassY = glassY
        self.metalX = metalX
        self.metalY = metalY
        self.organicX = organicX
        self.organicY = organicY
        self.screenWidth = plasticX*8/1.25
        self.screenHeight = plasticY*5/4
    }
    
    var body: some View {
        Trash(x: self.screenWidth*0.1*8.5, y: self.screenHeight*(0.5+((0.75-0.5)/2)*1.05), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 257, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*7.5, y: self.screenHeight*(0.5+((0.75-0.5)/3)*1.15), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 129, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*6.5, y: self.screenHeight*(0.5+((0.75-0.5)/4)*1.25), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 78, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*5.5, y: self.screenHeight*(0.5+((0.75-0.5)/5)*1.35), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 67, wrongCollision: self.$wrongCollision)
        
        Trash(x: self.screenWidth*0.1*4.5, y: self.screenHeight*(0.5+((0.75-0.5)/2)*1.1), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 98, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*3.5, y: self.screenHeight*(0.5+((0.75-0.5)/3)*1.2), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 24, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*2.5, y: self.screenHeight*(0.5+((0.75-0.5)/4)*1.3), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 22, wrongCollision: self.$wrongCollision)
        Trash(x: self.screenWidth*0.1*1.5, y: self.screenHeight*(0.5+((0.75-0.5)/5)*1.4), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 345, wrongCollision: self.$wrongCollision)
        
    }
}

