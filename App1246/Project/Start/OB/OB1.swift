//
//  OB1.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct OB1: View {
    var body: some View {

        ZStack {
            
            Color("bg3")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("ob1")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack {
                            
                            Text("Organize your schedule with notes. Track activity.")
                                .foregroundColor(.white)
                                .font(.system(size: 22, weight: .bold))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                            
                            NavigationLink(destination: {
                                
                                OB2()
                                    .navigationBarBackButtonHidden()
                                
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
    OB1()
}
