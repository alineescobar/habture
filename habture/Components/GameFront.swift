//
//  ContentView.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 13/05/21.
//

import SwiftUI

struct GameFront: View {
    
    @State var wrongCollision: Bool = false
    @State var countPlastic: Int = 0
    @State var countGlass: Int = 0
    @State var countMetal: Int = 0
    @State var countOrganic: Int = 0
    @State var countAll: Int = 0
    @Binding var completedCollectDestinoLixo: Bool
    @Binding var completedCollect: Bool
    
    init(completedCollectDestinoLixo: Binding<Bool>, completedCollect: Binding<Bool>) {
        self._completedCollectDestinoLixo = completedCollectDestinoLixo
        self._completedCollect = completedCollect
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                
                GenerateTrash(plasticX: geometry.size.width*1.25/8, plasticY: geometry.size.height*0.87, glassX: geometry.size.width*3.125/8, glassY: geometry.size.height*0.87, metalX: geometry.size.width*4.875/8, metalY: geometry.size.height*0.87, organicX: geometry.size.width*6.75/8, organicY: geometry.size.height*0.87, countAll: self.$countAll, wrongCollision: self.$wrongCollision, countPlastic: self.$countPlastic, countGlass: self.$countGlass, countMetal: self.$countMetal, countOrganic: self.$countOrganic)
                    .onChange(of: countAll) { newValue in
                        verifyCountAll()
                    }
                
                GenerateGarbages(plasticX: geometry.size.width*1.25/8, plasticY: geometry.size.height*0.87, glassX: geometry.size.width*3.125/8, glassY: geometry.size.height*0.87, metalX: geometry.size.width*4.875/8, metalY: geometry.size.height*0.87, organicX: geometry.size.width*6.75/8, organicY: geometry.size.height*0.87)
                
                ModalWrongGarbage()
                    .onAppear(perform: delayModal)
                    .isHidden(!self.wrongCollision)
                    .zIndex(50)
            }
        }
    }
    
    func verifyCountAll(){
        if countAll == 16 {
            self.completedCollect = true
            if !completedCollectDestinoLixo {
                UserDefaults.standard.set(true, forKey: "StorageCompletedCollectDestinoLixo")
                self.completedCollectDestinoLixo = true
            }
        }
    }
    
    func delayModal() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.wrongCollision = false
        }
    }
    
}

/*struct GameFront_Previews: PreviewProvider {
    static var previews: some View {
        GameFront()
    }
}*/

