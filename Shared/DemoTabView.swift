//
//  DemoTabView.swift
//  DemoDefaultXcodeApp
//
//  Created by 樋口航也 on 2021/09/03.
//
//

import SwiftUI

struct DemoTabView: View {
    var body: some View {
        TabView {
            FirstDemoTabView()
                    .tabItem {
                        Label("First",
                                systemImage: "list.dash")
                    }
            SecondDemoTabView()
                    .tabItem {
                        Label("Second",
                                systemImage: "magnifyingglass")
                    }
        }
                .navigationBarTitle("DemoTabView")
    }
}

struct FirstDemoTabView: View {
    var body: some View {
        Text("First Tab")
    }
}

struct SecondDemoTabView: View {
    var body: some View {
        Text("Second Tab")
    }
}

class DemoTabView_Previews: PreviewProvider {
    static var previews: some View {
        DemoTabView()
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
