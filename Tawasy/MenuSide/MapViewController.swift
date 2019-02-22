//
//  MapViewController.swift
//  Tawasy
//
//  Created by Admin on 2/14/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit
import MapKit

class CustomPin: NSObject , MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var  title: String?
    var subtitle: String?
     init(Pintitle:String,Pinsubtitle:String,Pinlocation:CLLocationCoordinate2D) {
        self.title=Pintitle
        self.subtitle=Pinsubtitle
        self.coordinate=Pinlocation
    }
}



class MapViewController: UIViewController , MKMapViewDelegate{

    @IBOutlet var MyMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(25.225202, 55.351122)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location ,span: span)
        MyMap.setRegion(region, animated: true)
        
        let pin = CustomPin(Pintitle: "TAWASY", Pinsubtitle: "2nd Floor, Food Court, Dubai Festival City Mall,  UAE", Pinlocation: location)
        MyMap.addAnnotation(pin)
        MyMap.delegate = self
        
    }

    public func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        let identifier = "MyPin"
        if annotation.isKind(of: MKUserLocation.self) {
            return nil
        }
        // Reuse the annotation if possible
        var annotationView:MKPinAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as?
        MKPinAnnotationView
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        }
        let leftIconView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
        leftIconView.image = UIImage(named: "TawastPIC")
        annotationView?.leftCalloutAccessoryView = leftIconView
       return annotationView
    }


}
