//
//  SettingsView.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    var body: some View {

        ZStack {
            
            Color("bg2")
                .ignoresSafeArea()
            
            VStack {
                                    
                    Text("Settings")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium))
                .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 13) {
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "hand.thumbsup.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .regular))
                                
                                Text("Rate our app")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .medium))
                                
                                Spacer()
                                
                                Text("Rate")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(6)
                                    .padding(.horizontal, 6)
                                    .background(RoundedRectangle(cornerRadius: 9).fill(Color("prim3")))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg3")))
                        })
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/33f83779-c46c-4159-a5e1-437fc956b31e") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "doc.text.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .regular))
                                
                                Text("Usage Policy")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .medium))
                                
                                Spacer()
                                
                                Text("Read")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(6)
                                    .padding(.horizontal, 6)
                                    .background(RoundedRectangle(cornerRadius: 9).fill(Color("prim3")))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg3")))
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
