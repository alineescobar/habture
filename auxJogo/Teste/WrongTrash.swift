//
//  WrongTrash.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct WrongTrash: View {
    
    @State var xPos1: CGFloat
    @State var yPos1: CGFloat
    @Binding var message: String
    let garbageX: CGFloat
    let garbageY: CGFloat
    @State var collision: Bool = false
    
    init(x:CGFloat, y:CGFloat, garbageX:CGFloat, garbageY:CGFloat, message: Binding<String>) {
        self.xPos1 = x
        self.yPos1 = y
        self.garbageX = garbageX
        self.garbageY = garbageY
        self._message = message
    }
    
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 50, height: 50)
            .position(x: self.xPos1, y: self.yPos1)
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
        
        if abs(self.garbageX - self.xPos1) < 30 && abs(self.garbageY - self.yPos1) < 30{
            self.message = "Não mesmo!"
            self.collision = true
        }else{
            self.collision = false
        }
    }
}
