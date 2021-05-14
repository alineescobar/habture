//
//  ContentView.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var collision: Bool = false
    @State var countPlastic: Int = 0
    @State var countGlass: Int = 0
    @State var countMetal: Int = 0
    @State var countOrganic: Int = 0
    @State var message: String = ""
    @State var countAll: Int = 0
    
    var body: some View {
        ZStack{
            Text(self.message)
                .position(CGPoint(x: 200, y: 100))
            
            Text(String(self.countAll))
                .position(CGPoint(x: 200, y: 200))
            
            GenerateTrash(message: self.$message, countAll: self.$countAll)
            
            GenerateGarbages(plasticX: 70, plasticY: 600, glassX: 155, glassY: 600, metalX: 240, metalY: 600, organicX: 325, organicY: 600)
            
        }
    }
    
    func isDone() {
        if self.countAll == 16 {
//            modal
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


