//
//  AuthenticatedView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 1/24/22.
//

import SwiftUI

struct AuthenticatedView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
        }
            .navigationTitle("Login Successful")
    }
}

struct AuthenticatedView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticatedView()
    }
}
