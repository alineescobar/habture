//
//  ContentView.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var xPos1: CGFloat = 200
    @State var yPos1: CGFloat = 300
    
    @State var xPos2: CGFloat = 200
    @State var yPos2: CGFloat = 600
    
    @State var collision: Bool = false
    @State var count: Int = 0
    @State var message: String = ""
    
    var body: some View {
        ZStack{
            Text(String(self.count)+"/5")
                .position(CGPoint(x: 200, y: 700))
            Text(self.message)
                .position(CGPoint(x: 200, y: 100))
            Trash(x: 200, y: 500, garbageX: self.xPos2, garbageY: self.yPos2, count: self.$count, message: self.$message)
            WrongTrash(x: 200, y: 300, garbageX: self.xPos2, garbageY: self.yPos2, message: self.$message)
//            Circle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 50)
//                .position(x: self.xPos1, y: self.yPos1)
//                .gesture(
//                DragGesture()
//                    .onChanged({value in
//                        self.message = ""
//                        self.xPos1 = value.location.x
//                        self.yPos1 = value.location.y
//                    })
//                    .onEnded({_ in
//                        self.checkCollision()
//                    })
//                )
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .position(x: self.xPos2, y: self.yPos2)
            
        }
    }
    
//    func checkCollision (){
//
//        if abs(self.xPos2 - self.xPos1) < 30 && abs(self.yPos2 - self.yPos1) < 30{
//            self.collision = true
//            self.count += 1
//            self.message = "Isso mesmo!"
//        }else{
//            self.collision = false
////            self.message = "Você vacilou!"
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


