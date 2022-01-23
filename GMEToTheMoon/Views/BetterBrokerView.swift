//
//  BuyGMEView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

struct BetterBrokerView: View {

    var body: some View {
        ZStack {
            Image("rc")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.bottom)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            ZStack {
                VStack {
                    Spacer()
//                    Spacer()
                    Text("LFG")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("WE OWN THE FLOAT")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                    Spacer()
                }
            }
        }
            .navigationTitle("Buy GME")
    }
}

struct BetterBrokerView_Previews: PreviewProvider {
    static var previews: some View {
        BetterBrokerView()
    }
}
