//
//  MainView.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import SwiftUI

struct MainView: View {
    @State private var selected: Int = 4
    
    var body: some View {
        VStack {
            TabView (selection: $selected) {
                HomeView()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "magnifyingglass.circle")
                        Text("ស្វែងរក")
                    }
                    .tag(0)
                
                PropertyListView()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "building.2.crop.circle")
                        Text("អចលន​ទ្រព្យ")
                    }
                    .tag(1)
                
                SavedView()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "heart.circle")
                        Text("រក្សាទុក")
                    }
                    .tag(2)
                
                NotificationView()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bell.circle")
                        Text("ការជូនដំណឹង")
                    }
                    .tag(3)
                
                ProfileView()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("គណនី")
                    }
                    .tag(4)
                
            }
            .accentColor(Color("AppColor"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
