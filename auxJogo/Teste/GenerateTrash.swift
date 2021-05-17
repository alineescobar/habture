//
//  GenerateTrash.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 14/05/21.
//

import SwiftUI

struct GenerateTrash: View {
    @Binding var message: String
    @Binding var countAll: Int
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
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat, message: Binding<String>, countAll: Binding<Int>){
        self._message = message
        self._countAll = countAll
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
        Trash(x: self.screenWidth*0.1*1, y: self.screenHeight*(0.5+((0.75-0.5)/2)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "metal", count: self.$countAll, angle: 37)
        Trash(x: self.screenWidth*0.1*2, y: self.screenHeight*(0.5+((0.75-0.5)/3)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "glass", count: self.$countAll, angle: 45)
        Trash(x: self.screenWidth*0.1*3, y: self.screenHeight*(0.5+((0.75-0.5)/4)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "organic", count: self.$countAll, angle: 12)
        Trash(x: self.screenWidth*0.1*4, y: self.screenHeight*(0.5+((0.75-0.5)/5)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "plastic", count: self.$countAll, angle: 0)
        
        Trash(x: self.screenWidth*0.1*5, y: self.screenHeight*(0.5+((0.75-0.5)/2)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "glass", count: self.$countAll, angle: 89)
        Trash(x: self.screenWidth*0.1*6, y: self.screenHeight*(0.5+((0.75-0.5)/3)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "organic", count: self.$countAll, angle: 134)
        Trash(x: self.screenWidth*0.1*7, y: self.screenHeight*(0.5+((0.75-0.5)/4)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "plastic", count: self.$countAll, angle: 253)
        Trash(x: self.screenWidth*0.1*8, y: self.screenHeight*(0.5+((0.75-0.5)/5)), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "metal", count: self.$countAll, angle: 301)
        
        GenerateTrash2(plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,message: self.$message, count: self.$countAll)
    }
}

struct GenerateTrash2: View {
    @Binding var message: String
    @Binding var countAll: Int
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
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat,message: Binding<String>, count: Binding<Int>){
        self._message = message
        self._countAll = count
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
        Trash(x: self.screenWidth*0.1*8.5, y: self.screenHeight*(0.5+((0.75-0.5)/2)*1.05), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "plastic", count: self.$countAll, angle: 257)
        Trash(x: self.screenWidth*0.1*7.5, y: self.screenHeight*(0.5+((0.75-0.5)/3)*1.15), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "metal", count: self.$countAll, angle: 129)
        Trash(x: self.screenWidth*0.1*6.5, y: self.screenHeight*(0.5+((0.75-0.5)/4)*1.25), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "glass", count: self.$countAll, angle: 78)
        Trash(x: self.screenWidth*0.1*5.5, y: self.screenHeight*(0.5+((0.75-0.5)/5)*1.35), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "organic", count: self.$countAll, angle: 67)
        
        Trash(x: self.screenWidth*0.1*4.5, y: self.screenHeight*(0.5+((0.75-0.5)/2)*1.1), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "organic", count: self.$countAll, angle: 98)
        Trash(x: self.screenWidth*0.1*3.5, y: self.screenHeight*(0.5+((0.75-0.5)/3)*1.2), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "plastic", count: self.$countAll, angle: 24)
        Trash(x: self.screenWidth*0.1*2.5, y: self.screenHeight*(0.5+((0.75-0.5)/4)*1.3), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "metal", count: self.$countAll, angle: 22)
        Trash(x: self.screenWidth*0.1*1.5, y: self.screenHeight*(0.5+((0.75-0.5)/5)*1.4), plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, message: self.$message, type: "glass", count: self.$countAll, angle: 345)
        
    }
}

