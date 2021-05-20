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
    @Binding var countPlastic: Int
    @Binding var countGlass: Int
    @Binding var countMetal: Int
    @Binding var countOrganic: Int
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
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat, countAll: Binding<Int>, wrongCollision: Binding<Bool>, countPlastic: Binding<Int>, countGlass: Binding<Int>, countMetal: Binding<Int>, countOrganic: Binding<Int>){
        self._countAll = countAll
        self._countPlastic = countPlastic
        self._countGlass = countGlass
        self._countMetal = countMetal
        self._countOrganic = countOrganic
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
        Trash(x: self.screenWidth*0.1*1, y: self.screenHeight*(0.5+((0.25)/2))*1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 37, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*2, y: self.screenHeight*(0.5+((0.25)/3))*0.98, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 45, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*3, y: self.screenHeight*(0.5+((0.25)/4))*0.99, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 12, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*4, y: self.screenHeight*(0.5+((0.25)/5))*0.97, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 0, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        
        Trash(x: self.screenWidth*0.1*5, y: self.screenHeight*(0.5+((0.25)/2))*1.1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 89, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*6, y: self.screenHeight*(0.5+((0.25)/3))*1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 134, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*7, y: self.screenHeight*(0.5+((0.25)/4))*0.99, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 253, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.1*8, y: self.screenHeight*(0.5+((0.25)/5))*1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 301, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        
        GenerateTrash2(plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY, count: self.$countAll, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
    }
}

struct GenerateTrash2: View {
    @Binding var countAll: Int
    @Binding var wrongCollision: Bool
    @Binding var countPlastic: Int
    @Binding var countGlass: Int
    @Binding var countMetal: Int
    @Binding var countOrganic: Int
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
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat, count: Binding<Int>, wrongCollision: Binding<Bool>, countPlastic: Binding<Int>, countGlass: Binding<Int>, countMetal: Binding<Int>, countOrganic: Binding<Int>){
        self._countAll = count
        self._countPlastic = countPlastic
        self._countGlass = countGlass
        self._countMetal = countMetal
        self._countOrganic = countOrganic
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
        Trash(x: self.screenWidth*0.85, y: self.screenHeight*(0.5+((0.25)/2)*1.05)*1.1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 257, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.75, y: self.screenHeight*(0.5+((0.25)/3)*1.15)*0.996, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 129, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.65, y: self.screenHeight*(0.5+((0.25)/4)*1.25)*1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 78, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.55, y: self.screenHeight*(0.5+((0.25)/5)*1.35)*0.98, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 67, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        
        Trash(x: self.screenWidth*0.45, y: self.screenHeight*(0.5+((0.25)/2)*1.1)*1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "organic", count: self.$countAll, angle: 98, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.35, y: self.screenHeight*(0.5+((0.25)/3)*1.2)*1.1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "plastic", count: self.$countAll, angle: 24, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.25, y: self.screenHeight*(0.5+((0.25)/4)*1.3)*0.97, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "metal", count: self.$countAll, angle: 22, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        Trash(x: self.screenWidth*0.15, y: self.screenHeight*(0.5+((0.25)/5)*1.4)*1.1, plasticX: self.plasticX, plasticY: self.plasticY, glassX: self.glassX, glassY: self.glassY, metalX: self.metalX, metalY: self.metalY, organicX: self.organicX, organicY: self.organicY,  type: "glass", count: self.$countAll, angle: 345, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
        
    }
}

