//
//  ViewRouter.swift
//  habture
//
//  Created by Aline Osana Escobar on 11/05/21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .categorias
}

enum Page {
    case categorias
    case conquistas
    case ajustes
    case perfil
}
