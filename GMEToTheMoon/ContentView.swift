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
                Spacer()
                Text("🦍 Welcome! Ape 🦍")
                    .bold()
                NavigationLink(
                    destination: LaunchStonkView(),
                    label: {
                        HStack {
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
                NavigationLink(destination: DFVView(), label: {
                    VStack {
                        Text("💎")
                            .font(.largeTitle)
                        Text("🙌")
                            .font(.largeTitle)
                    }
                })
                
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
            .navigationTitle("🚀GME🚀")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
