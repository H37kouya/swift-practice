//
//  ContentView.swift
//  Shared
//
//  Created by 樋口航也 on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                List(conferencesData) {
                    conference in
                    VStack(alignment: .leading) {
                        NavigationLink(destination: ConferenceDetail(conference: conference)) {
                            Text(conference.name).font(.headline)
                            Text(conference.location).font(.subheadline)
                        }
                    }
                }
                        .navigationBarTitle("Conferences")

                NavigationLink(destination: DemoTabView()) {
                    Text("DemoTabViewへ").font(.headline)
                }

                NavigationLink(destination: LazyVStackView()) {
                    Text("LazeVStackView").font(.headline)
                }
            }
        }
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
