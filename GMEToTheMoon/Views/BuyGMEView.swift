//
//  BuyGMEView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 1/23/22.
//

import SwiftUI

struct BuyGMEView: View {
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
                    destination: BetterBrokerView(),
                    label: {
                        Text(current.source)
                    })
            }
        }
        .navigationTitle("To The Moon 🌕")
    }
}

struct BuyGMEView_Previews: PreviewProvider {
    static var previews: some View {
        BuyGMEView(brokers: Stonk.sampleData())
    }
}
