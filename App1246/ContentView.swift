//
//  ContentView.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Schedule

    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            if status {
            
            VStack(spacing: 0, content: {
            
                    TabView(selection: $current_tab, content: {

                        ScheduleView()
                            .tag(Tab.Schedule)
                        
                        SubscriptionsView()
                            .tag(Tab.Subscriptions)

                        SettingsView()
                            .tag(Tab.Settings)
                        
                    })
                    
                    TabBar(selectedTab: $current_tab)
                })
                    .ignoresSafeArea(.all, edges: .bottom)
                    .onAppear {
                        
                    }
                
            } else {
                
                OB1()
            }
        }
    }
}

#Preview {
    ContentView()
}
