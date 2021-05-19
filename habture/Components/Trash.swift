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
    @Binding var count: Int
    @Binding var countPlastic: Int
    @Binding var countGlass: Int
    @Binding var countMetal: Int
    @Binding var countOrganic: Int
    @Binding var wrongCollision: Bool
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
    
    init(x:CGFloat, y:CGFloat, plasticX:CGFloat, plasticY:CGFloat, glassX:CGFloat, glassY:CGFloat, metalX:CGFloat, metalY:CGFloat, organicX:CGFloat, organicY:CGFloat, type: String, count: Binding<Int>, angle: Double, wrongCollision: Binding<Bool>, countPlastic: Binding<Int>, countGlass: Binding<Int>, countMetal: Binding<Int>, countOrganic: Binding<Int>) {
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
        self.type = type
        self.initialPosX = x
        self.initialPosY = y
        self._count = count
        self._countPlastic = countPlastic
        self._countGlass = countGlass
        self._countMetal = countMetal
        self._countOrganic = countOrganic
        self.angle = angle
        self._wrongCollision = wrongCollision
    }
    
    var body: some View {
        ZStack{
            Image(self.type)
                .rotationEffect(Angle(degrees: self.angle))
                .frame(width: 35, height: 35)
                .position(x: self.xPos1, y: self.yPos1)
                .isHidden(self.collision)
                .gesture(
                    DragGesture()
                        .onChanged({value in
                            self.wrongCollision = false
                            self.xPos1 = value.location.x
                            self.yPos1 = value.location.y
                        })
                        .onEnded({_ in
                            self.checkCollision()
                        })
                )
        }
    }
    
    func checkCollision (){
        
        if abs(self.plasticX - self.xPos1) < 50 && abs(self.plasticY - self.yPos1) < 50{
            if self.type == "plastic"{
                self.count += 1
                self.countPlastic += 1
                self.collision = true
            }else{
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
                self.wrongCollision = true
            }
        }else if abs(self.glassX - self.xPos1) < 50 && abs(self.glassY - self.yPos1) < 50{
            if self.type == "glass"{
                self.count += 1
                self.countGlass += 1
                self.collision = true
            }else{
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
                self.wrongCollision = true
            }
        }else if abs(self.metalX - self.xPos1) < 50 && abs(self.metalY - self.yPos1) < 50{
            if self.type == "metal"{
                self.count += 1
                self.countMetal += 1
                self.collision = true
            }else{
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
                self.wrongCollision = true
            }
        }else if abs(self.organicX - self.xPos1) < 50 && abs(self.organicY - self.yPos1) < 50{
            if self.type == "organic"{
                self.count += 1
                self.countOrganic += 1
                self.collision = true
            }else{
                self.xPos1 = initialPosX
                self.yPos1 = initialPosY
                self.collision = false
                self.wrongCollision = true
            }
        }
    }
    func delayModal() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.wrongCollision = false
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
