//
//  ProfileView.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ProfileItem()
                            .frame(height: 200)
                        
                        // Personal Information
                        VStack(alignment: .leading, spacing: 0) {
                            ProfileHead(title: "Personal Information")
                            NavigationLink(
                                destination: PropertyDetailView(),
                                label: {
                                    ProfileNav(icon: "person.crop.circle.fill", title: "My Information")
                                })
                            
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "briefcase.fill", title: "My Deals")
                                })
                            
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "gift.fill", title: "My Donations")
                                })
                        }
                        // Help
                        VStack(alignment: .leading, spacing: 0) {
                            ProfileHead(title: "Let us help you")
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "questionmark.diamond.fill", title: "How it Works?")
                                })
                            
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "shield.lefthalf.fill", title: "Privacy Policy")
                                })
                            
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "bolt.horizontal.circle.fill", title: "Support")
                                })
                            
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    ProfileNav(icon: "at.circle.fill", title: "About")
                                })
                        }
                        
                        // Logout
                        Logout()
                    }
                    .padding([.top, .bottom], 100)
                }
            }
            
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(Color(.systemGroupedBackground))
            .background(Color(.systemGroupedBackground))
            .navigationBarItems(trailing: HStack {
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 20))
                    .foregroundColor(Color("DarkColor"))
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileItem: View {
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                
                Button(action: {}, label: {
                    Image(systemName: "camera.fill")
                        .font(.system(size: 20))
                        .foregroundColor(Color("WhiteColor"))
                })
                .padding(.top, 55)
                .padding(.leading, 50)
            }
            
            Text("senghort kheang".uppercased())
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .foregroundColor(Color("BlackColor"))
        }
        .padding(.top, 0)
    }
}

struct ProfileHead: View {
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Text(title.uppercased())
                .font(.system(size: 15))
                .foregroundColor(Color("DarkColor"))
                .padding()
            
        }
        .padding([.top, .bottom], 0)
    }
}

struct ProfileNav: View {
    @State var icon: String = ""
    @State var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(Color("LightColor"))
                Text(title)
                    .font(.system(size: 16))
                    .foregroundColor(Color("BlackColor"))
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 18))
                    .foregroundColor(Color("LightColor"))
            }
            .padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 20)
            Divider()
        }
        .background(Color("WhiteColor"))
    }
}

struct Logout: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "power")
                        .font(.system(size: 20))
                        .foregroundColor(.red)
                        
                    Text("Logout")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.red)
                }
            })
        }
        .padding([.top, .bottom], 30)
    }
}
