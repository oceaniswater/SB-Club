//
//  AppTabView.swift
//  SB Club
//
//  Created by Mark Golubev on 21/02/2024.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            MembershipView()
                .tabItem {
                    Label("Membership", systemImage: "person")
                }
            
            BookCourtView()
                .tabItem {
                    Label("Book a Court", systemImage: "figure.tennis")
                }
            
            MembershipView()
                .tabItem {
                    Label("Book Sessions", systemImage: "figure.cooldown")
                }
            
            OtherView()
                .tabItem {
                    Label("Other", systemImage: "square.on.square.badge.person.crop.fill")
                }
            
            
        }
    }
}

#Preview {
    AppTabView()
}
