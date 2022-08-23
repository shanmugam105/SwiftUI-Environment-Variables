//
//  ContentView.swift
//  SwiftUI-Environment-Variables
//
//  Created by Mac on 17/08/22.
//

import SwiftUI

struct HomeContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Environment(\.locale) var locale: Locale
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                WelcomeElementsContentView()
                    .environment(\.colorScheme, .light)
                Spacer()
                
                NavigationLink {
                    LoginContentView()
                } label: {
                    Text("Get started")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(4)
                        .padding()
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(Color.white)
                }
            }
            .background(colorScheme == .dark ? Color.gray : Color.white)
            .navigationBarHidden(true)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .background(colorScheme == .dark ? Color.gray : Color.white)
    }
}

struct WelcomeElementsContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Welcome!")
                .font(.title)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .foregroundColor(colorScheme == .dark ? Color.white : Color.blue)
                .onTapGesture {
                    print(colorScheme)
                }
        }
    }
}
