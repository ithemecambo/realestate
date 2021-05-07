//
//  MapView.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var locations: [LocationAnnotation]
//    var locationManager = CLLocationManager()
//    
//    var setupManager: () {
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestAlwaysAuthorization()
//    }
    
//    func makeCoordinator() -> MapCoordinator {
//        MapCoordinator(self)
//    }
    
    func makeUIView(context: Context) -> MKMapView {
        //setupManager
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        //view.delegate = context.coordinator
        view.addAnnotations(locations)
    }
}

class MapCoordinator: NSObject, MKMapViewDelegate {
    var mapView: MapView
            
    init(_ mapView: MapView) {
      self.mapView = mapView
    }

    func mapView(_ mapView: MKMapView, viewFor
       annotation: MKAnnotation) -> MKAnnotationView?{
      let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
      annotationView.canShowCallout = true
      annotationView.image = UIImage(named: "pin")
      return annotationView
    }
}
