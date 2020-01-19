//
//  ViewController.swift
//  Swift iOS Multiview
//
//  Created by Olivia Clough on 1/18/20.
//  Copyright © 2020 Olivia Clough. All rights reserved.
//

/*import UIKit
import MapKit
import CoreLocation

class RootController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    //var SettingsViewController: SettingsViewController?
 */

import UIKit
import MapKit
import CoreLocation

class RootController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
    


}

