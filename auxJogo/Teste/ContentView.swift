//
//  ContentView.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var wrongCollision: Bool = false
    @State var countPlastic: Int = 0
    @State var countGlass: Int = 0
    @State var countMetal: Int = 0
    @State var countOrganic: Int = 0
    @State var countAll: Int = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Text(String(self.countAll))
                    .position(CGPoint(x: 200, y: 200))
                
                GenerateTrash(plasticX: geometry.size.width*1.25/8, plasticY: geometry.size.height*4/5, glassX: geometry.size.width*3.125/8, glassY: geometry.size.height*4/5, metalX: geometry.size.width*4.875/8, metalY: geometry.size.height*4/5, organicX: geometry.size.width*6.75/8, organicY: geometry.size.height*4/5, countAll: self.$countAll, wrongCollision: self.$wrongCollision)
                
                
                GenerateGarbages(plasticX: geometry.size.width*1.25/8, plasticY: geometry.size.height*4/5, glassX: geometry.size.width*3.125/8, glassY: geometry.size.height*4/5, metalX: geometry.size.width*4.875/8, metalY: geometry.size.height*4/5, organicX: geometry.size.width*6.75/8, organicY: geometry.size.height*4/5)
                
                ModalWrongGarbage()
                    .onAppear(perform: delayModal)
                    .isHidden(!self.wrongCollision)
                    .zIndex(50)
            }
        }
    }
    func delayModal() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.wrongCollision = false
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

