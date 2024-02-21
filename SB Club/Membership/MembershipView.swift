//
//  MembershipView.swift
//  SB Club
//
//  Created by Mark Golubev on 21/02/2024.
//

import SwiftUI

struct MembershipView: View {
    @StateObject var vm = MembershipViewModel()
    
    var body: some View {
        ZStack {
            Color(.blue)
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(            Color(.blue)
                        .opacity(0.3))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                    .frame(width: 30, height: 5)
                    .padding(.top)

                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding()
                Text("Card for Mark")
                Label("123456", systemImage: "lock")
                    .padding(.top)
                Image(uiImage: vm.barcode ?? UIImage(systemName: "lock")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    
            }
            .background {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.white)
                    .shadow(radius: 10)
            }
        }
        .onAppear{
            vm.getBarcode()
        }
        
    }
}

#Preview {
    MembershipView()
}
