//
//  LoadingView.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {

        ZStack {
            
            Color("bg3")
                .ignoresSafeArea()
            
            Image("lbg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 70)
            }
            
            VStack {
                
                Spacer()
                
                ProgressView()
                    .padding(.bottom, 90)
            }
        }
    }
}

#Preview {
    LoadingView()
}
