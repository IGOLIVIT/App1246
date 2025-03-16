//
//  OB2.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct OB2: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg3")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("ob2")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack {
                            
                            Text("Vanya subscriptions and payments at hand with statistics")
                                .foregroundColor(.white)
                                .font(.system(size: 22, weight: .bold))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                status = true
                                
                            }, label: {
                                
                                Text("Next")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                                    .padding(.horizontal, 60)
                                    .frame(height: 50)
                                    .background(RoundedRectangle(cornerRadius: 14).fill(Color("prim3")))
                            })
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.bottom)
                        }
                        .padding(30)
                        .frame(maxWidth: .infinity)
                        .frame(height: 240)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg")))
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    OB2()
}
