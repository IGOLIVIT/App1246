//
//  ScheduleView.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct ScheduleView: View {
    
    @StateObject var viewModel = ScheduleViewModel()
    
    var body: some View {

        ZStack {
            
            Color("bg2")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Training schedule")
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
                            
                            if viewModel.scheds.isEmpty {
                                
                                HStack {
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("0")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                }
                                
                            } else {
                                
                                HStack {
                                    
                                    Text("\(viewModel.ran1)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran2)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran3)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran4)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran5)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran6)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                    
                                    Text("\(viewModel.ran7)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                }
                            }
                            
                            if viewModel.scheds.isEmpty {
                                
                                HStack {
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(Int(5))

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
                                }
                                
                            } else {
                                
                                HStack {
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran1) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran2) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran3) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran4) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran5) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran6) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.ran7) ?? 0) * reader.size.height)) / CGFloat(Int(5))
                                        
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
                                }
                            }
                            
                            HStack {
                                
                                ForEach(viewModel.days, id: \.self) { index in
                                
                                    Text(index)
                                        .foregroundColor(.white)
                                        .font(.system(size: 12, weight: .medium))
                                        .frame(maxWidth: .infinity)
                                }
                            }
                            
                            Spacer()
                            
                            Text("Physical activity")
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
                        
                        if viewModel.scheds.isEmpty {
                            
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
                            
                            if viewModel.scheds.filter({($0.scType ?? "") == viewModel.typeForFilter}).isEmpty {
                                
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
                            
                            ForEach(viewModel.scheds.filter({($0.scType ?? "") == viewModel.typeForFilter}), id: \.self) { index in
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    HStack {
                                        
                                        Text(index.scTit ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20, weight: .semibold))
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                            viewModel.selectedSched = index
                                            
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
                                        
                                        Image("gira")
                                        
                                        Text(index.scTyp ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    HStack {
                                        
                                        Image("point")
                                        
                                        Text(index.scPlace ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    HStack {
                                        
                                        Image("kepka")
                                        
                                        Text(index.scCoach ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    HStack {
                                        
                                        Image("time")
                                        
                                        Text((index.scTime ?? Date()).convertDate(format: "hh:MM"))
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .medium))
                                    }
                                    
                                    Text("Day")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Text(index.scDay ?? "")
                                        .foregroundColor(Color("prim3"))
                                        .font(.system(size: 13, weight: .regular))
                                        .padding(9)
                                        .background(RoundedRectangle(cornerRadius: 3).fill(Color("prim3").opacity(0.4)))
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
            
            viewModel.fetchScheds()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            NewSchedule(viewModel: viewModel)
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
                            
                            CoreDataStack.shared.deleteSched(withScTit: viewModel.selectedSched?.scTit ?? "", completion: {
                                
                                viewModel.fetchScheds()
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
    ScheduleView()
}
