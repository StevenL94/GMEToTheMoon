//
//  RobinhoodView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import SwiftUI

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
            Image("vlad")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .padding()
                .opacity(0.5)
            
        }
            .navigationTitle("SHF_ERR")
    }
}

struct RobinhoodView_Previews: PreviewProvider {
    static var previews: some View {
        RobinhoodView()
    }
}
