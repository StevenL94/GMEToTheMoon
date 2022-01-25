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
                .opacity(0.8)
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Link(destination: URL(string: "https://www.youtube.com/c/RoaringKitty")!) {
                            Image("theroaringkitty")
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                        Link(destination: URL(string: "https://www.reddit.com/r/wallstreetbets/comments/msblc3/gme_yolo_update_apr_16_2021_final_update/")!) {
                            Image("wsb")
                                .resizable()
                                .frame(width: 200, height: 100, alignment: .center)
                        }
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
