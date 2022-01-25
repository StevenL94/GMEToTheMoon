//
//  ContentView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

extension Image {
    
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
    
}

struct ContentView: View {
    @State var counter = 0
    @State var users: [User]
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
                VStack {
                    Button(action: inc){
                        Text(" ")
                    }
                    if counter >= 5 {
                        NavigationLink(destination: SecretMenuView(users: users), label: {
                            Image(systemName: "gearshape")
                                .foregroundColor(.gray)
                        })
                    }
                }
                
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
    func inc() {
        counter+=1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(users: [])
    }
}
