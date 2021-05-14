//
//  GenerateTrash.swift
//  Teste
//
//  Created by Giovanni Madalozzo on 14/05/21.
//

import SwiftUI

struct GenerateTrash: View {
    @Binding var message: String
    @Binding var countAll: Int
    
    init(message: Binding<String>, countAll: Binding<Int>){
        self._message = message
        self._countAll = countAll
    }
    
    var body: some View {
        Trash(x: 107, y: 450, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "plastic", count: self.$countAll, angle: 37)
        Trash(x: 200, y: 330, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "plastic", count: self.$countAll, angle: 45)
        Trash(x: 120, y: 410, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "plastic", count: self.$countAll, angle: 12)
        Trash(x: 242, y: 308, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "plastic", count: self.$countAll, angle: 0)
        
        Trash(x: 221, y: 478, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "glass", count: self.$countAll, angle: 89)
        Trash(x: 173, y: 490, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "glass", count: self.$countAll, angle: 134)
        Trash(x: 266, y: 401, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "glass", count: self.$countAll, angle: 253)
        Trash(x: 145, y: 364, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "glass", count: self.$countAll, angle: 301)
        
        GenerateTrash2(message: self.$message, count: self.$countAll)
    }
}

struct GenerateTrash2: View {
    @Binding var message: String
    @Binding var countAll: Int
    
    init(message: Binding<String>, count: Binding<Int>){
        self._message = message
        self._countAll = count
    }
    
    var body: some View {
        Trash(x: 107, y: 500, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "metal", count: self.$countAll, angle: 257)
        Trash(x: 200, y: 300, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "metal", count: self.$countAll, angle: 129)
        Trash(x: 120, y: 310, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "metal", count: self.$countAll, angle: 78)
        Trash(x: 242, y: 288, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "metal", count: self.$countAll, angle: 67)
        
        Trash(x: 221, y: 378, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "organic", count: self.$countAll, angle: 98)
        Trash(x: 173, y: 390, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "organic", count: self.$countAll, angle: 24)
        Trash(x: 266, y: 501, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "organic", count: self.$countAll, angle: 22)
        Trash(x: 145, y: 464, plasticX: 50, plasticY: 600, glassX: 130, glassY: 600, metalX: 210, metalY: 600, organicX: 290, organicY: 600, message: self.$message, type: "organic", count: self.$countAll, angle: 345)
        
    }
}

