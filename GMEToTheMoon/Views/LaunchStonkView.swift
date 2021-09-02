//
//  LaunchStonkView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

struct LaunchStonkView: View {
    var brokers: [Stonk]
    var body: some View {
        List(brokers) { current in
            if current.source == "RobinDaHood" {
                NavigationLink(
                    destination: RobinhoodView(),
                    label: {
                        Text(current.source)
                    })
            }
            else {
                NavigationLink(
                    destination: BuyGMEView(),
                    label: {
                        Text(current.source)
                    })
            }
        }
        .navigationTitle("To The Moon 🌕")
    }
}

struct LaunchStonkView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchStonkView(brokers: Stonk.sampleData())
    }
}
