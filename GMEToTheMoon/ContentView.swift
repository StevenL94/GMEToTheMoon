//
//  ContentView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("🦍 Welcome! Ape 🦍")
                    .bold()
                Spacer()
                NavigationLink(
                    destination: LaunchStonkView(),
                    label: {
                        HStack {
                            //                        Image(systemName: "airplane.circle")
                            Text("🚀")
                                .font(.largeTitle)
                            Text("Ready To Launch")
                                .bold()
                                .foregroundColor(.white)
                            Text("🚀")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        .padding(20)
                        .background(Color.red)
                        .cornerRadius(10.0)
                    })
                Spacer()
                Text("💎")
                    .font(.largeTitle)
                Text("🙌")
                    .font(.largeTitle)
                Link(destination: URL(string: "https://www.gamestop.com")!) {
                    HStack {
                        Text("Game")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.black)
                        Text("Stop")
                            .font(.title)
                            .fontWeight(.black)
                            .bold()
                            .foregroundColor(Color.red)
                    }
                }
                Text("POWER TO THE PLAYERS")
                    .font(.caption2)
                    .fontWeight(.bold)
            }
            .navigationTitle("NYSE: GME 🚀🚀🚀")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
