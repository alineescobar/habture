//
//  habtureApp.swift
//  habture
//
//  Created by Aline Osana Escobar on 06/05/21.
//

import SwiftUI

@main
struct habtureApp: App {
    var body: some Scene {
        WindowGroup {
            MainOfOnboarding()
                .environmentObject(Reloud())
//            ContentView(viewRouter: ViewRouter())
//                .environmentObject(Reloud())
        }
    }
}

class Reloud: ObservableObject {
    @Published var a: String = " "
}
