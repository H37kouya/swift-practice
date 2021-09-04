//
//  LazyVStackView.swift
//  DemoDefaultXcodeApp
//
//  Created by 樋口航也 on 2021/09/04.
//
//

import SwiftUI

struct Element: Identifiable {
    let id: UUID = UUID()
    let value: Int
}

struct LazyVStackView: View {
    @State var elements =
            Array(1...100).map(Element.init)

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(elements) { element in
                    Text("\(element.value)")
                }
            }
        }
    }
}

class LazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView()
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
