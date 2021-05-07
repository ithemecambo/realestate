//
//  PropertyDetailView.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import SwiftUI

struct PropertyDetailView: View {
    @Environment(\.presentationMode) var presentMode: Binding<PresentationMode>
    @State var property = PropertyDetailDataModel().dataDetail
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: false) {
                // Galleries
                GalleryItem()
                
                VStack(alignment: .leading) {
                    // Description
                    DescriptionItem(property: property)
                    
                    // Property Overview
                    OverviewHead(overviews: property?.overviews ?? [])
                        .padding(.top, 20)
                    
                    // Features
                    FeatureHead(features: property?.features ?? [])
                        .padding(.top, 20)
                    
                    // Security
                    SecurityHead(securities: property?.securities ?? [])
                        .padding(.top, 20)

                    // Amenities
                    AmenitiesHead(amenities: property?.amenities ?? [])
                        .padding(.top, 20)

//                    // Location
//                    LocationItem()
//                        .disabled(true)
//                        .padding(.top, 20)

                    // You might also like
                    YouLikeHead(relatedProperties: property?.relatedProperties ?? [])
                        .padding(.top, 20)
                    
                }
                .padding([.leading, .trailing], 100)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarColor(Color("WhiteColor"))
        .navigationBarItems(leading: HStack {
            Button(action: {
                self.presentMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .foregroundColor(Color("AppColor"))
            })
        }, trailing: HStack {
            Button(action: {}, label: {
                Image(systemName: "arrowshape.turn.up.backward.circle")
                    .font(.system(size: 20))
                    .foregroundColor(Color("AppColor"))
            })
            Button(action: {}, label: {
                Image(systemName: "heart.circle.fill")
                    .font(.system(size: 20))
                    .foregroundColor(Color("AppColor"))
            })
        })
    }
}

struct PropertyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyDetailView()
    }
}

struct GalleryItem: View {
    var body: some View {
        VStack {
            Image("Condo1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 350)
        }
    }
}

struct DescriptionItem: View {
    @State var property: PropertyDetailDataModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(property?.price ?? "")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .foregroundColor(Color("AppColor"))
            Text(property?.propertyName?.uppercased() ?? "")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 23))
                    .padding(8)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(30)
                Text(property?.address ?? "")
                    .font(.system(size: 15))
                    .foregroundColor(Color("DarkColor"))
            }
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                ForEach(property?.additions ?? []) { model in
                    AdditionItem(icon: model.icon ?? "", title: model.title ?? "")
                }
            }
            Text(property?.description ?? "")
                .font(.system(size: 15))
                .foregroundColor(Color("LightColor"))
        }
        .padding(.top, -50)
    }
}

struct AdditionItem: View {
    @State var icon: String = ""
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(Color("LightColor"))
            
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(Color("BlackColor"))
        }
        .padding([.top, .bottom], 10)
    }
}

struct OverviewHead: View {
    @State var overviews: [OverViewModel] = []
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Property Overview")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(overviews) { overview in
                    OverviewItem(overview: overview)
                }
            }
            .disabled(true)
            .padding(.top, 10)
            .padding(.leading, 0)
        }
    }
}

struct FeatureHead: View {
    @State var features: [FeatureModel] = []
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Property Features")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(features) { feature in
                    DataItem(icon: feature.icon ?? "", title: feature.title ?? "")
                }
            }
            .disabled(true)
            .padding(.top, 10)
            .padding(.leading, 0)
        }
    }
}

struct SecurityHead: View {
    @State var securities: [SecurityModel] = []
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Security")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(securities) { security in
                    DataItem(icon: security.icon ?? "", title: security.title ?? "")
                }
            }
            .disabled(true)
            .padding(.top, 10)
            .padding(.leading, 0)
        }
    }
}

struct AmenitiesHead: View {
    @State var amenities: [AmenitiesModel] = []
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Amenities")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(amenities) { amenity in
                    DataItem(icon: amenity.icon ?? "", title: amenity.title ?? "")
                }
            }
            .disabled(true)
            .padding(.top, 10)
            .padding(.leading, 0)
        }
    }
}

struct OverviewItem: View {
    @State var overview: OverViewModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: overview?.icon ?? "")
                    .font(.system(size: 20))
                    .foregroundColor(Color("LightColor"))
                    .padding(15)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(30)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(overview?.label ?? "")
                        .font(.system(size: 15))
                        .foregroundColor(Color("BlackColor"))
                    
                    Text(overview?.value ?? "")
                        .font(.system(size: 15))
                        .foregroundColor(Color("BlackColor"))
                }
            }
        }
    }
}

struct DataItem: View {
    @State var icon: String = ""
    @State var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(Color("LightColor"))
                
                Text(title)
                    .font(.system(size: 15))
                    .foregroundColor(Color("BlackColor"))
            }
        }
    }
}

struct LocationItem: View {
    // @State var locations: [LocationAnnotation] = LocationAnnotation.locationDetail
    var body: some View {
        VStack {
            //MapView(locations: $locations)
        }
        .padding([.leading, .trailing], -100)
        .frame(height: 300)
    }
}

struct YouLikeHead: View {
    @State var relatedProperties: [PropertyDataModel] = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("You might also like")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(relatedProperties) { property in
                        YouLikeItem(property: property)
                            .frame(width: _width - 70)
                    }
                }
            }
            .padding(.top, 10)
            .padding(.leading, 0)
        }
    }
}

struct YouLikeItem: View {
    @State var property: PropertyDataModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(property?.photoUrl ?? "")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
            
            Text(property?.price ?? "")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color("AppColor"))
            Text(property?.propertyName ?? "")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(Color("BlackColor"))
                .lineLimit(2)
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 23))
                    .foregroundColor(Color("LightColor").opacity(0.7))
                Text(property?.address ?? "")
                    .font(.system(size: 15))
                    .foregroundColor(Color("DarkColor"))
                    .lineLimit(2)
            }
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    ForEach(property?.additions ?? []) { add in
                        PropertyItemTag(title: add.title ?? "", icon: add.icon ?? "")
                    }
                }
            }
        }
        .padding([.trailing], 20)
    }
}

struct PropertyItemTag: View {
    @State var title: String = ""
    @State var icon: String = ""
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(Color("BlackColor"))
            
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(Color("LightColor"))
            
        }
        .padding(.trailing, 10)
    }
}
