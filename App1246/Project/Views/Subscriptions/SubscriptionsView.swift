//
//  SubscriptionsView.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct SubscriptionsView: View {

    @StateObject var viewModel = SubscriptionsViewModel()
    
    private var total: Double {
        viewModel.paid + viewModel.notpaid
    }
    
    private var percentage1: Double {
        viewModel.paid / total
    }
    
    var body: some View {

        ZStack {
            
            Color("bg2")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Subscriptions and payment")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium))
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = true
                            }
                            
                        }, label: {
                            
                            Image(systemName: "plus")
                                .foregroundColor(.black)
                                .font(.system(size: 18, weight: .regular))
                        })
                    }
                }
                .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        VStack {
                            
                            HStack {
                                
                                Spacer()
                                
                                VStack {
                                    
                                    HStack {
                                        
                                        Text("\(viewModel.pay)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13, weight: .regular))
                                            .frame(maxWidth: .infinity)
                                        
                                        Text("\(viewModel.sub)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13, weight: .regular))
                                            .frame(maxWidth: .infinity)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        
                                        GeometryReader { reader in
                                            
                                            let result = CGFloat((CGFloat(Int(viewModel.pay) ?? 0) * reader.size.height)) / CGFloat(Int(30))
                                            
                                            ZStack(alignment: .bottom, content: {
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray.opacity(0.2))
                                                    .frame(width: 2, height: 50)
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.white)
                                                    .frame(width: 2, height: result)
                                            })
                                        }
                                        .frame(width: 3, height: 50)
                                        .frame(maxWidth: .infinity)
                                        
                                        GeometryReader { reader in
                                            
                                            let result = CGFloat((CGFloat(Int(viewModel.sub) ?? 0) * reader.size.height)) / CGFloat(Int(30))
                                            
                                            ZStack(alignment: .bottom, content: {
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray.opacity(0.2))
                                                    .frame(width: 2, height: 50)
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.white)
                                                    .frame(width: 2, height: result)
                                            })
                                        }
                                        .frame(width: 3, height: 50)
                                        .frame(maxWidth: .infinity)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        
                                        ForEach(viewModel.days, id: \.self) { index in
                                            
                                            Text(index)
                                                .foregroundColor(.white)
                                                .font(.system(size: 12, weight: .medium))
                                                .frame(maxWidth: .infinity)
                                        }
                                        
                                        Spacer()
                                    }
                                }
                                
                                Spacer()
                                
                                ZStack {
                                         Circle()
                                             .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                                         
                                         Circle()
                                        .trim(from: 0, to: CGFloat(percentage1))
                                             .stroke(Color("prim"), lineWidth: 10)
                                             .rotationEffect(.degrees(-90))
                                         
                                         Circle()
                                             .trim(from: CGFloat(percentage1), to: 1)
                                             .stroke(Color("prim2"), lineWidth: 10)
                                             .rotationEffect(.degrees(-90))
                                    
                                    VStack {
                                        
                                        Text("$\(String(format: "%.f", viewModel.paid))")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .medium))
                                        
                                        Text("-$\(String(format: "%.f", viewModel.notpaid))")
                                            .foregroundColor(Color("prim2"))
                                            .font(.system(size: 11, weight: .medium))
                                    }
                                     }
                                     .frame(width: 110, height: 110)
                                
                                Spacer()

                            }
                            
                            Spacer()

                            Text("Cost")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        }
                        .padding(25)
                        .frame(maxWidth: .infinity)
                        .frame(height: 190)
                        .background(RoundedRectangle(cornerRadius: 16).fill(Color("bg3")))

                        HStack {
                            
                            ForEach(viewModel.types, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    viewModel.typeForFilter = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.typeForFilter == index ? Color("bg3") : Color.white.opacity(0.4))
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                        .padding(3)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(Color.white.opacity(viewModel.typeForFilter == index ? 1 : 0)))
                                })
                            }
                        }
                        .padding(2)
                        .background(RoundedRectangle(cornerRadius: 6).fill(Color("bg3").opacity(0.8)))
                        
                        if viewModel.payments.isEmpty {
                            
                            Text("Empty")
                                .foregroundColor(.black)
                                .font(.system(size: 24, weight: .semibold))
                                .padding(.top, 90)
                            
                            Text("No entries")
                                .foregroundColor(.black.opacity(0.6))
                                .font(.system(size: 13, weight: .regular))
                            
                            Button(action: {
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isAdd = true
                                }
                                
                            }, label: {
                                
                                Text("Add")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                                    .frame(width: 100, height: 40)
                                    .background(RoundedRectangle(cornerRadius: 11).fill(Color("bg3")))
                            })
                             
                        } else {
                            
                            if viewModel.payments.filter({($0.paVid ?? "") == viewModel.typeForFilter}).isEmpty {
                                
                                Text("Empty")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24, weight: .semibold))
                                    .padding(.top, 90)
                                
                                Text("No entries")
                                    .foregroundColor(.black.opacity(0.6))
                                    .font(.system(size: 13, weight: .regular))
                                
                                Button(action: {
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.isAdd = true
                                    }
                                    
                                }, label: {
                                    
                                    Text("Add")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                        .frame(width: 100, height: 40)
                                        .background(RoundedRectangle(cornerRadius: 11).fill(Color("bg3")))
                                })
                                
                            } else {
                            
                                ForEach(viewModel.payments.filter({($0.paVid ?? "") == viewModel.typeForFilter}), id: \.self) { index in
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    HStack {
                                        
                                        Text(index.paTit ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20, weight: .semibold))
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                            viewModel.selectedPay = index
                                            
                                            withAnimation(.spring()) {
                                                
                                                viewModel.isDelete = true
                                            }
                                            
                                        }, label: {
                                            
                                            Image(systemName: "trash.fill")
                                                .foregroundColor(.white)
                                                .font(.system(size: 17, weight: .regular))
                                        })
                                    }
                                    
                                    HStack {
                                        
                                        Text("$")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                        
                                        Text(index.paSum ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    HStack {
                                        
                                        Image("gira")
                                        
                                        Text(index.paType ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    Text(index.paStatus ?? "")
                                        .foregroundColor(index.paStatus ?? "" == "Paid" ? Color("prim") : Color("prim2"))
                                        .font(.system(size: 13, weight: .regular))
                                        .padding(7)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(Color("prim3").opacity(0.4)))
                                    
                                    HStack {
                                                                                
                                        Text((index.paDateS ?? Date()).convertDate(format: "MMM dd, YYYY"))
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                            .padding(7)
                                            .background(RoundedRectangle(cornerRadius: 6).fill(Color("prim3").opacity(0.2)))
                                        
                                        Text((index.paDateE ?? Date()).convertDate(format: "MMM dd, YYYY"))
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                            .padding(7)
                                            .background(RoundedRectangle(cornerRadius: 6).fill(Color("prim3").opacity(0.2)))
                                    }
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 13).fill(Color("bg3")))
                            }
                        }
                         }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            
            viewModel.fetchPay()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            NewSubscrip(viewModel: viewModel)
        })
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDelete ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                    }
                
                VStack(spacing: 15) {

                    Text("Are you sure you want to delete?")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    
                    Text("This action can not be undone")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))

                    Rectangle()
                        .fill(Color("prim3"))
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                        .padding(.top, 7)
                    
                    HStack {
                        
                        Button(action: {

                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.blue)
                                .font(.system(size: 17, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                        
                        Button(action: {
                            
                            if viewModel.selectedPay?.paStatus ?? "" == "Paid" {
                                
                                viewModel.pay -= 1
                                viewModel.paid -= Double(viewModel.selectedPay?.paSum ?? "") ?? 0
                                
                            } else {
                                
                                viewModel.sub -= 1
                                viewModel.notpaid -= Double(viewModel.selectedPay?.paSum ?? "") ?? 0
                            }
                            
                            CoreDataStack.shared.deletePay(withPaTit: viewModel.selectedPay?.paTit ?? "", completion: {
                                
                                viewModel.fetchPay()
                            })

                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Delete")
                                .foregroundColor(.red)
                                .font(.system(size: 17, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))
                .padding()
                .offset(y: viewModel.isDelete ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    SubscriptionsView()
}
