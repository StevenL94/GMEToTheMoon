//
//  LaunchStonkView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

struct LaunchStonkView: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: BuyGMEView(brokers: Stonk.sampleData()),
                label: {
                    HStack {
                        Text("Buy")
                            .bold()
                            .foregroundColor(.white)
                        Text("🚀🚀🚀")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(20)
                    .background(Color.green)
                    .cornerRadius(10.0)
                })
            NavigationLink(
                destination: SellGMEView(),
                label: {
                    HStack {
                        Text("Sell")
                            .bold()
                            .foregroundColor(.white)
                        Text("🚀🚀🚀")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .rotationEffect(Angle(degrees: 180.0))
                    }
                    .padding(20)
                    .background(Color.red)
                    .cornerRadius(10.0)
                })
        }
        .navigationTitle("Moon?")
    }
}

struct LaunchStonkView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchStonkView()
    }
}
