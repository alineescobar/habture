//
//  GenerateGarbages.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 14/05/21.
//

import SwiftUI

struct GenerateGarbages: View {
    let plasticX: CGFloat
    let plasticY: CGFloat
    let glassX: CGFloat
    let glassY: CGFloat
    let metalX: CGFloat
    let metalY: CGFloat
    let organicX: CGFloat
    let organicY: CGFloat
    
    init(plasticX: CGFloat, plasticY: CGFloat, glassX: CGFloat, glassY: CGFloat, metalX: CGFloat, metalY: CGFloat, organicX: CGFloat, organicY: CGFloat){
        
        self.plasticX = plasticX
        self.plasticY = plasticY
        self.glassX = glassX
        self.glassY = glassY
        self.metalX = metalX
        self.metalY = metalY
        self.organicX = organicX
        self.organicY = organicY
        
    }
    var body: some View {
        Garbage(x: self.plasticX, y: self.plasticY, type: "plastic")
        Garbage(x: self.glassX, y: self.glassY, type: "glass")
        Garbage(x: self.metalX, y: self.metalY, type: "metal")
        Garbage(x: self.organicX, y: self.organicY, type: "organic")
    }
}
