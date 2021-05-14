//
//  Garbage.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct Trash: View {
    @State var xPos1: CGFloat
    @State var yPos1: CGFloat
    @State var collision: Bool = false
    @Binding var message: String
    @Binding var count: Int
    let plasticX: CGFloat
    let plasticY: CGFloat
    let glassX: CGFloat
    let glassY: CGFloat
    let metalX: CGFloat
    let metalY: CGFloat
    let organicX: CGFloat
    let organicY: CGFloat
    let type: String
    let angle: Double
    
    private var initialPosX: CGFloat
    private var initialPosY: CGFloat
    
    init(x:CGFloat, y:CGFloat, plasticX:CGFloat, plasticY:CGFloat, glassX:CGFloat, glassY:CGFloat, metalX:CGFloat, metalY:CGFloat, organicX:CGFloat, organicY:CGFloat, message: Binding<String>, type: String, count: Binding<Int>, angle: Double) {
        self.xPos1 = x
        self.yPos1 = y
        self.plasticX = plasticX
        self.plasticY = plasticY
        self.glassX = glassX
        self.glassY = glassY
        self.metalX = metalX
        self.metalY = metalY
        self.organicX = organicX
        self.organicY = organicY
        self._message = message
        self.type = type
        self.initialPosX = x
        self.initialPosY = y
        self._count = count
        self.angle = angle
    }
    
    var body: some View {
        Image(self.type)
            .rotationEffect(Angle(degrees: self.angle))
            .frame(width: 35, height: 35)
            .position(x: self.xPos1, y: self.yPos1)
            .isHidden(self.collision)
            .gesture(
            DragGesture()
                .onChanged({value in
                    self.message = ""
                    self.xPos1 = value.location.x
                    self.yPos1 = value.location.y
                })
                .onEnded({_ in
                    self.checkCollision()
                })
            )
    }
    
    func checkCollision (){
        
        if abs(self.plasticX - self.xPos1) < 50 && abs(self.plasticY - self.yPos1) < 50{
            if self.type == "plastic"{
                self.message = "Isso mesmo!"
                self.count += 1
                self.collision = true
            }else{
                self.message = "Errou!"
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
            }
        }else if abs(self.glassX - self.xPos1) < 50 && abs(self.glassY - self.yPos1) < 50{
            if self.type == "glass"{
                self.message = "Isso mesmo!"
                self.count += 1
                self.collision = true
            }else{
                self.message = "Errou!"
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
            }
        }else if abs(self.metalX - self.xPos1) < 50 && abs(self.metalY - self.yPos1) < 50{
            if self.type == "metal"{
                self.message = "Isso mesmo!"
                self.count += 1
                self.collision = true
            }else{
                self.message = "Errou!"
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
            }
        }else if abs(self.organicX - self.xPos1) < 50 && abs(self.organicY - self.yPos1) < 50{
            if self.type == "organic"{
                self.message = "Isso mesmo!"
                self.count += 1
                self.collision = true
            }else{
                self.message = "Errou!"
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
            }
        }
}
}

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
