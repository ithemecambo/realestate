//
//  PropertyDataModel.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import Foundation
import MapKit

struct PropertyDataModel: Identifiable, Codable {
    var id = UUID()
    var propertyName: String? = ""
    var price: String? = ""
    var address: String? = ""
    var photoUrl: String? = ""
    var additions: [AdditionDataModel]? = []
    
    static var properties: [PropertyDataModel] {
        return [
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
        ]
    }
    
    static var relatedProperties: [PropertyDataModel] {
        return [
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
            PropertyDataModel(propertyName: "The Star Polaris 23 Condominium",
                              price: "$230,394.00",
                              address: "#174, 2.5km far from Preah Monivong Bridge",
                              photoUrl: "Condo1",
                              additions: AdditionDataModel.additions),
        ]
    }
}

struct AdditionDataModel: Identifiable, Codable {
    var id = UUID()
    var icon: String? = ""
    var title: String? = ""
    
    static var additions: [AdditionDataModel] {
        return [
            AdditionDataModel(icon: "bed.double", title: "\(Int.random(min: 1, max: 9))"),
            AdditionDataModel(icon: "comb", title: "\(Int.random(min: 1, max: 4))"),
            AdditionDataModel(icon: "car", title: "\(Int.random(min: 1, max: 7))"),
            AdditionDataModel(icon: "squareshape.squareshape.dashed", title: "\(Int.random(min: 1, max: 9999))")
        ]
    }
    
    static var lists: [AdditionDataModel] {
        return [
            AdditionDataModel(icon: "bed.double", title: "\(Int.random(min: 1, max: 9)) bed(s)"),
            AdditionDataModel(icon: "comb", title: "\(Int.random(min: 1, max: 4)) bath(s)"),
            AdditionDataModel(icon: "car", title: "\(Int.random(min: 1, max: 7)) car(s)"),
            AdditionDataModel(icon: "squareshape.squareshape.dashed", title: "\(Int.random(min: 1, max: 9999)) m²")
        ]
    }
}

struct PropertyDetailDataModel: Identifiable, Codable {
    var id = UUID()
    var galleries: [PropertyGalleries]? = []
    var propertyName: String? = ""
    var price: String? = ""
    var address: String? = ""
    var description: String? = ""
    var additions: [AdditionDataModel]? = []
    var overviews: [OverViewModel]? = []
    var features: [FeatureModel]? = []
    var securities: [SecurityModel]? = []
    var amenities: [AmenitiesModel]? = []
    var relatedProperties: [PropertyDataModel]? = []
    
    var dataDetail: PropertyDetailDataModel? {
        return PropertyDetailDataModel(galleries: [],
                                       propertyName: "The Star Polaris 23 Condominium",
                                       price: "$230,394.00",
                                       address: "#174, 2.5km far from Preah Monivong Bridge",
                                       description: dataStr,
                                       additions: AdditionDataModel.lists,
                                       overviews: OverViewModel.overviews,
                                       features: FeatureModel.features,
                                       securities: SecurityModel.securities,
                                       amenities: AmenitiesModel.amenities,
                                       relatedProperties: PropertyDataModel.relatedProperties)
    }
}

struct PropertyGalleries: Identifiable, Codable {
    var id = UUID()
}

struct OverViewModel: Identifiable, Codable {
    var id = UUID()
    var icon: String? = ""
    var label: String? = ""
    var value: String? = ""
    
    static var overviews: [OverViewModel] {
        return [
            OverViewModel(icon: "checkmark", label: "Total Units:", value: "1,680"),
            OverViewModel(icon: "checkmark", label: "Unit Type:", value: "Condo"),
            OverViewModel(icon: "checkmark", label: "Beds in a Unit:", value: "1 to 3"),
            OverViewModel(icon: "checkmark", label: "Decoration Type:", value: "Modern Style"),
            OverViewModel(icon: "checkmark", label: "Floor Areas:", value: "48 m² to 127 m²"),
            OverViewModel(icon: "checkmark", label: "Floors:", value: "41"),
            OverViewModel(icon: "checkmark", label: "Title:", value: "Hard Title"),
            OverViewModel(icon: "checkmark", label: "Structure:", value: "Reinforced Concrete"),
            OverViewModel(icon: "checkmark", label: "Greening Rate:", value: "10%"),
            OverViewModel(icon: "checkmark", label: "Listed:", value: "1 Year Ago"),
            OverViewModel(icon: "checkmark", label: "Updated:", value: "4 Weeks Ago"),
            OverViewModel(icon: "checkmark", label: "Property ID:", value: "106499"),
            OverViewModel(icon: "checkmark", label: "Developer:", value: "Yin Yi Venture Co.,Ltd"),
        ]
    }
}

struct FeatureModel: Identifiable, Codable {
    var id = UUID()
    var icon: String? = ""
    var title: String? = ""
    
    static var features: [FeatureModel] {
        return [
            FeatureModel(icon: "checkmark", title: "Air Conditioning"),
            FeatureModel(icon: "checkmark", title: "Balcony"),
            FeatureModel(icon: "checkmark", title: "Pay TV"),
            FeatureModel(icon: "checkmark", title: "Pet Friendly"),
            FeatureModel(icon: "checkmark", title: "Serviced Property"),
        ]
    }
}

struct AmenitiesModel: Identifiable, Codable {
    var id = UUID()
    var icon: String? = ""
    var title: String? = ""
    
    static var amenities: [AmenitiesModel] {
        return [
            AmenitiesModel(icon: "checkmark", title: "Car Parking"),
            AmenitiesModel(icon: "checkmark", title: "Commercial area"),
            AmenitiesModel(icon: "checkmark", title: "Common Area"),
            AmenitiesModel(icon: "checkmark", title: "Garden"),
            AmenitiesModel(icon: "checkmark", title: "Gym/Fitness Center"),
            AmenitiesModel(icon: "checkmark", title: "Jacuzzi"),
            AmenitiesModel(icon: "checkmark", title: "Lift / Elevator"),
            AmenitiesModel(icon: "checkmark", title: "On main road"),
            AmenitiesModel(icon: "checkmark", title: "Sauna"),
            AmenitiesModel(icon: "checkmark", title: "Sports Facilities"),
            AmenitiesModel(icon: "checkmark", title: "Swimming Pool"),
            AmenitiesModel(icon: "checkmark", title: "Backup Electricity / Generator"),
        ]
    }
}

struct SecurityModel: Identifiable, Codable {
    var id = UUID()
    var icon: String? = ""
    var title: String? = ""
    
    static var securities: [SecurityModel] {
        return [
            SecurityModel(icon: "checkmark", title: "Alarm System"),
            SecurityModel(icon: "checkmark", title: "Fire Alarm"),
            SecurityModel(icon: "checkmark", title: "Fire sprinkler system"),
            SecurityModel(icon: "checkmark", title: "Gated Community"),
            SecurityModel(icon: "checkmark", title: "Reception 24/7"),
            SecurityModel(icon: "checkmark", title: "Video Security")
        ]
    }
}

class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D

    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
    static func requestMockData()-> [LandmarkAnnotation]{
        return [
            LandmarkAnnotation(title: "Bengalore",
                               subtitle:"Bengaluru (also called Bangalore) is the capital of India's southern Karnataka state.",
                               coordinate: .init(latitude: 12.9716, longitude: 77.5946)),
            LandmarkAnnotation(title: "Mumbai",
                               subtitle:"Mumbai (formerly called Bombay) is a densely populated city on India’s west coast",
                               coordinate: .init(latitude: 19.0760, longitude: 72.8777))
        ]
    }
}

class LocationAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D

    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
    static var locations: [LocationAnnotation] {
        return [
            LocationAnnotation(title: "Bengalore",
                               subtitle: "Bengaluru (also called Bangalore)",
                               coordinate: .init(latitude: 19.0760, longitude: 72.8777))
        ]
    }
    
    static var locationDetail: [LocationAnnotation] {
        return [
            LocationAnnotation(title: "Bengalore",
                               subtitle: "Bengaluru (also called Bangalore)",
                               coordinate: .init(latitude: 19.0760, longitude: 72.8777))
        ]
    }
}
