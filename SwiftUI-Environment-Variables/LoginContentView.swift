//
//  LoginContentView.swift
//  SwiftUI-Environment-Variables
//
//  Created by Mac on 17/08/22.
//

import SwiftUI

struct LoginContentView: View {
    
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.presentationMode) var presentationMode
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        if verticalSizeClass == .compact {
            HStack {
                VStack {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    TextField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                VStack {
                    Button {
                        print("Successfully logged in!")
                    } label: {
                        
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(4)
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.white)
                    }
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Back")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(4)
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.white)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .navigationBarBackButtonHidden(true)
        } else {
            VStack {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                HStack {
                    Button {
                        print("Successfully logged in!")
                    } label: {
                        
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(4)
                            .padding()
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.white)
                    }
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Back")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(4)
                            .padding()
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.white)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
