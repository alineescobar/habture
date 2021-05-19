//
//  MainOfOnboarding.swift
//  habture
//
//  Created by Julia Alberti Maia on 18/05/21.
//

import SwiftUI

struct MainOfOnboarding: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .white
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white
    }
    @State private var selected: Int = 0
    //@State private var selected2 = false
    var body: some View {
        GeometryReader{ geometry in
            TabView(selection: $selected){
                Onboarding1()
                    .tabItem { Image(systemName: (selected == 0 ? "circle.fill" : "circle"))
                    }
                    .tag(0)
                
                Onboarding2()
                    .tabItem { Image(systemName: (selected == 1 ? "circle.fill" : "circle"))
                    }
                    .tag(1)
            }
            .frame(height: UIScreen.main.bounds.height + geometry.safeAreaInsets.top)
                        .offset(y: -geometry.safeAreaInsets.top)
                        .tabViewStyle(PageTabViewStyle())
                        .ignoresSafeArea()
    }
    }
}


struct MainOfOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        MainOfOnboarding()
    }
}

