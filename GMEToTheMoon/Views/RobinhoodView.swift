//
//  RobinhoodView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI
import AVKit

struct RobinhoodView: View {
    var body: some View {
        VStack {
            Text("Can't help you here chief 🤷‍♂️")
                .fontWeight(.bold)
            Image("kenny")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .padding()
//            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "kennyg", withExtension: "mp4")!))
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 360, height: 200)
//                .cornerRadius(25)
//            Image("vlad")
//                .resizable()
//                .scaledToFit()
//                .cornerRadius(25)
//                .padding()
//                .opacity(0.5)
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "vlad", withExtension: "mp4")!))
                .aspectRatio(contentMode: .fill)
                .frame(width: 390, height: 200)
                .cornerRadius(25)
            
        }
            .navigationTitle("RobinDaHood")
    }
}

struct RobinhoodView_Previews: PreviewProvider {
    static var previews: some View {
        RobinhoodView()
    }
}
