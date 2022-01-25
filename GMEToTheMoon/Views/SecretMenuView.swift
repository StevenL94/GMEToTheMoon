//
//  SecretMenuView.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 1/24/22.
//

import SwiftUI

struct SecretMenuView: View {
    @State var users: [User]
    @State var username = ""
    @State var password = ""
    @State var authenticated = false
    @State var attempts = 0
    @State var userCreated = false
    var body: some View {
        VStack {
            if !authenticated {
                HStack {
                    // username
                    TextField("Username", text: $username)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    if !username.isEmpty {
                        // checkmark
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.red)
                    }
                }
                HStack {
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    if !password.isEmpty {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.red)
                    }
                }
                VStack {
                    HStack {
                        Spacer()
                        Button(action: authenticate) {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                        }
                        NavigationLink(destination: AuthenticatedView(), label: {})
//                        NavigationLink(destination: AuthenticatedView(), isActive: self.$authenticated, label: {})
                        Spacer()
                        Button(action: addUser) {
                            Text("Register")
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                        }
                        Spacer()
                    }
                    if attempts > 0 && !authenticated {
                        Text("Please try again.")
                            .foregroundColor(.red)
                    }
                    if userCreated {
                        Text("User created sucessfully.")
                            .foregroundColor(.green)
                    }
                    Spacer()
                }
            }
        }
        .navigationTitle("Login")
    }
    func authenticate() {
        for user in users {
            if username == user.username && password == user.password {
                authenticated = true
            }
            else {
                authenticated = false
            }
        }
        //        if username == "dfv" && password == "GME420" {
        //            authenticated.toggle()
        //        }
        attempts += 1
    }
    func createUser(username: String, password: String) -> User {
        return User(username: username, password: password)
    }
    func addUser() {
        users.append(createUser(username: username, password: password))
        userCreated.toggle()
    }
}

struct SecretMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SecretMenuView(users: [])
    }
}
