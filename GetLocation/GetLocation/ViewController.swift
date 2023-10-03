//
//  ViewController.swift
//  GetLocation
//
//  Created by Anqi Guan on 9/30/23.
//

import UIKit
import CoreLocation

/*
 1. in the info.plist add a new row and select 'privacy location always and when in use and add a description'
 2. In the View Controller import corelocation
 3. Create UI elements and create outlets
 4. Implement CLLocationMagagerDelegate in the class
 5. Add an instance of location Manager (CLLocationManager)
 6. in the viewdidload add delegate to self and desired accuract
 7. Add locationManager function of didUpdateLocations function
 8. Also add locationManager didFailWithError function
 9. If you want to get address write a function which uses CLGeocoder and get the reverse
 
 */

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var lblLatitude: UILabel!
    
    @IBOutlet weak var lblLongitude: UILabel!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        startSignficantChangeLocation()
    }
    

    @IBAction func getLocationAction(_ sender: Any) {
        locationManager.requestLocation()
        
    }
    
    func startSignficantChangeLocation(){
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        let lat = location.coordinate.latitude;
        let lng = location.coordinate.longitude;
        
        print("Latitude = \(lat)")
        print("Longitude = \(lng)")
        
        lblLatitude.text = "Latitude = \(lat)"
        lblLongitude.text = "Longitude = \(lng)"
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error in getting location = \(error.localizedDescription)")
    }
    
    func getLocationAddress(location : CLLocation){
        let clGeoCoder = CLGeocoder()
        
        clGeoCoder.reverseGeocodeLocation(<#T##location: CLLocation##CLLocation#>){_,_ in 
            let clGeoCoder = CLGeocoder()
            
            clGeoCoder.reverseGeocodeLocation(location){ clPlaceMarks, error in
                if error != nil{
                           print("Error in gettig location from GeoCoder \(error?.localizedDescription)")
                           return
                           }
                
                guard let place = clPlaceMarks?.last else {return}
                var address = ""
                print(place.name)
                print(place.locality)
                print(place.region)
                print(place.location)
                print(place.ocean)
                
            }
                
            
        }
        
        
    }
    
    
}

