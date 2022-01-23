//
//  DFVView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 1/23/22.
//

import SwiftUI

struct DFVView: View {
    var body: some View {
        ZStack {
            Image("dfv")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.bottom)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            ZStack {
                VStack {
                    Spacer()
                    Link(destination: URL(string: "https://www.youtube.com/c/RoaringKitty")!) {
                        Image("theroaringkitty")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                }
            }
        }
            .navigationTitle("Not a Cat")
    }
}

struct DFVView_Previews: PreviewProvider {
    static var previews: some View {
        DFVView()
    }
}
