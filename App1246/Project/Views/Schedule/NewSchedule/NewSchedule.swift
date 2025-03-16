//
//  NewSchedule.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct NewSchedule: View {
    
    @StateObject var viewModel: ScheduleViewModel
    
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
                        
                        viewModel.scType = viewModel.curType
                        viewModel.scDay = viewModel.curDay
                        
                        viewModel.addSched()
                        
                        viewModel.scTit = ""
                        viewModel.scTyp = ""
                        viewModel.curType = ""
                        viewModel.scPlace = ""
                        viewModel.scCoach = ""
                        viewModel.curDay = ""
                        
                        viewModel.fetchScheds()
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {

                        Text("Save")
                            .foregroundColor(Color("prim3"))
                            .font(.system(size: 17, weight: .regular))
                    })
                    .opacity(viewModel.curDay.isEmpty || viewModel.scTit.isEmpty || viewModel.scTyp.isEmpty || viewModel.scPlace.isEmpty || viewModel.scCoach.isEmpty ? 0.6 : 1)
                    .disabled(viewModel.curDay.isEmpty || viewModel.scTit.isEmpty || viewModel.scTyp.isEmpty || viewModel.scPlace.isEmpty || viewModel.scCoach.isEmpty ? true : false)
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
                                    .opacity(viewModel.scTit.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.scTit)
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
                                    .opacity(viewModel.scTyp.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.scTyp)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Place")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Value")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(viewModel.scPlace.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.scPlace)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Coach")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Value")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(viewModel.scCoach.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.scCoach)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Text("Time")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                                .padding(.trailing)
                            
                            DatePicker("", selection: $viewModel.scTime, displayedComponents: .hourAndMinute)
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.3))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        HStack {
                            
                            ForEach(viewModel.days, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    viewModel.curDay = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.curDay == index ? Color("prim3") : .white)
                                        .font(.system(size: 13, weight: .regular))
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, 9)
                                        .background(RoundedRectangle(cornerRadius: 3).fill(Color("bg3").opacity(viewModel.curDay == index ? 1 : 0.5)))
                                })
                            }
                        }
                    }
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    NewSchedule(viewModel: ScheduleViewModel())
}
