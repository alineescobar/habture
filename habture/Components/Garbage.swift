//
//  Garbage.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct Garbage: View {
    let x: CGFloat
    let y: CGFloat
    let type: String
    @State var typeText: String = "lala"
    
    init(x:CGFloat, y:CGFloat, type:String) {
        self.x = x
        self.y = y
        self.type = type
        
    }
    
    var body: some View {
        VStack{
            let typeGarbage = self.identify(type: self.type)
            let file = typeGarbage + "Garbage"
            Image(file)
                .frame(width: 70, height: 100)
                .position(x: self.x, y: self.y)
        }
        
    }
    
    func identify(type: String) -> String{
        switch type {
        case "plastic":
            self.typeText = "Plástico"
            return "plastic"
        case "glass":
            self.typeText = "Vidro"
            return "glass"
        case "metal":
            self.typeText = "Metal"
            return "metal"
        case "organic":
            self.typeText = "Orgânico"
            return "organic"
        default:
            print("error")
        }
        return ""
    }
}
