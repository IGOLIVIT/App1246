//
//  NewSubscrip.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct NewSubscrip: View {

    @StateObject var viewModel: SubscriptionsViewModel
    
    var body: some View {

        ZStack {
            
            Color("bg2")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("prim3"))
                            .font(.system(size: 18, weight: .medium))
                        
                        Text("Cancel")
                            .foregroundColor(Color("prim3"))
                            .font(.system(size: 17, weight: .regular))
                    })
                    
                    Spacer()
                    
                    Text("Entry")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        viewModel.paVid = viewModel.curType
                        viewModel.paStatus = viewModel.curStatus
                        
                        if viewModel.curType == "Payment" {
                            
                            viewModel.pay += 1
                            viewModel.paid += Double(viewModel.paSum) ?? 0
                            
                        } else {
                            
                            viewModel.sub += 1
                            viewModel.notpaid += Double(viewModel.paSum) ?? 0
                        }
                        
                        viewModel.addPay()
                        
                        viewModel.paTit = ""
                        viewModel.paType = ""
                        viewModel.paSum = ""
                        
                        viewModel.fetchPay()
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {

                        Text("Save")
                            .foregroundColor(Color("prim3"))
                            .font(.system(size: 17, weight: .regular))
                    })
                    .opacity(viewModel.paTit.isEmpty || viewModel.paType.isEmpty || viewModel.curType.isEmpty || viewModel.curStatus.isEmpty ? 0.6 : 1)
                    .disabled(viewModel.paTit.isEmpty || viewModel.paType.isEmpty || viewModel.curType.isEmpty || viewModel.curStatus.isEmpty ? true : false)
                }
                .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 16) {
                        
                        HStack {
                            
                            ForEach(viewModel.types, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.curType = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.curType == index ? Color("bg3") : Color.white.opacity(0.4))
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                        .padding(3)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(Color.white.opacity(viewModel.curType == index ? 1 : 0)))
                                })
                            }
                        }
                        .padding(2)
                        .background(RoundedRectangle(cornerRadius: 6).fill(Color("bg3").opacity(0.8)))
                        
                        HStack {
                            
                            Text("Title")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Value")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(viewModel.paTit.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.paTit)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Type")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Value")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(viewModel.paType.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.paType)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Sum")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("0")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(viewModel.paSum.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.paSum)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)

                        HStack {
                            
                            Text("Date Start")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            DatePicker("", selection: $viewModel.paDateS, displayedComponents: .date)
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Date End")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            DatePicker("", selection: $viewModel.paDateE, displayedComponents: .date)
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            ForEach(viewModel.statuses, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    viewModel.curStatus = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.curStatus == index ? Color("bg3") : Color.white.opacity(0.4))
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                        .padding(3)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(index == "Paid" ? Color("prim") : Color("prim2")).opacity(viewModel.curStatus == index ? 1 : 0))
                                })
                            }
                        }
                        .padding(2)
                        .background(RoundedRectangle(cornerRadius: 6).fill(Color("bg3").opacity(0.8)))
                    }
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    NewSubscrip(viewModel: SubscriptionsViewModel())
}
