//
//  ContentView.swift
//  habture
//
//  Created by Aline Osana Escobar on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var completedCollectDestinoLixo: Bool = false
    @State var completedCollectTrophy: Bool = false
    
    var body: some View{
        GeometryReader { geometry in
            ZStack {
                Spacer()
                switch viewRouter.currentPage {
                case .categorias:
                    categories(
                        completedCollectDestinoLixo: $completedCollectDestinoLixo
                    )
                case .conquistas:
                    Awards(
                        completedCollectDestinoLixo: $completedCollectDestinoLixo
                    )
                case .ajustes:
                    Text("AJUSTES")
                case .perfil:
                    Text("PERFIL")
                }
                VStack{
                    Spacer()
                    HStack(alignment: .lastTextBaseline){
                        HStack{
                            TabBarIcon(
                                viewRouter: viewRouter,
                                assignedPage: Page.categorias,
                                width: 28,
                                height: 28,
                                iconName: "camera.filters",
                                tabName: "Categorias"
                            )
                            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 13))
                            
                            TabBarIcon(
                                viewRouter: viewRouter,
                                assignedPage: Page.conquistas,
                                width: 20,
                                height: 28,
                                iconName: "rosette",
                                tabName: "Conquistas"
                            )
                            .padding(EdgeInsets(top: 0, leading: 13, bottom: 0, trailing: 13))
                            
                            TabBarIcon(
                                viewRouter: viewRouter,
                                assignedPage: Page.ajustes,
                                width: 28,
                                height: 28,
                                iconName: "gearshape",
                                tabName: "Ajustes"
                            )
                            .padding(EdgeInsets(top: 0, leading: 13, bottom: 0, trailing: 13))
                            
                            TabBarIcon(
                                viewRouter: viewRouter,
                                assignedPage: Page.perfil,
                                width: 28,
                                height: 28,
                                iconName: "person",
                                tabName: "Perfil"
                            )
                            .padding(EdgeInsets(top: 0, leading: 13, bottom: 0, trailing: 30))
                        }
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/10)
                    .background(Color("Purple2"))
                    .cornerRadius(28, corners: [.topLeft, .topRight])
                }
            }
            .ignoresSafeArea()
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), completedCollectDestinoLixo: false)
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let iconName, tabName: String
    
    var body: some View {
        VStack{
            Image(systemName: iconName)
                .resizable()
                .frame(width: width, height: height)
                .padding(.top, 10)
                .foregroundColor(viewRouter.currentPage == assignedPage ? Color("BackgroundColor") : Color("BackgroundColorFaded"))
            Text(tabName)
                .font(.system(size: 10, design: .rounded))
                .fontWeight(.semibold)
                .frame(minWidth: 55)
                .foregroundColor(viewRouter.currentPage == assignedPage ? Color("BackgroundColor") : Color("BackgroundColorFaded"))
            Spacer()
        }
        .frame(maxWidth: .infinity )
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
