//
//  ConferenceDetail.swift
//  DemoDefaultXcodeApp
//
//  Created by 樋口航也 on 2021/09/02.
//
//

import SwiftUI

struct ConferenceDetail: View {
    var conference: Conference
    var body: some View {
        VStack(alignment: .leading) {
            Text(conference.location).padding(.bottom)
            Text(conference.textDates()).padding(.bottom)
            LinkButton(link: conference.link).padding(.bottom)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .navigationBarTitle(conference.name)
    }
}

struct LinkButton: View {
    var link = ""
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: self.link)!)
        }) {
            Text("Go to official website")
        }
    }
}

class ConferenceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceDetail(conference: Conference())
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ConferenceDetail(conference: Conference()))
    }
    #endif
}
