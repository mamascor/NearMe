//
//  ViewController.swift
//  NearMe
//
//  Created by Marco Mascorro on 12/18/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager?
    
    
    //started mapview
    lazy var mapview: MKMapView = {
        let map = MKMapView()
        map.showsUserLocation = true
        return map
    }()
    
    //Starting a textfiend to see what to type
    lazy var searchTextView: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 10
        tf.clipsToBounds = true
        tf.backgroundColor = .white
        tf.placeholder = "Search"
        tf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        tf.leftViewMode = .always
        
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Init locationmanager
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.requestLocation()
        
        
        configureUserInterface()
    }

    
    private func configureUserInterface(){
        view.addSubview(mapview)
        mapview.addConstraintsToFillView(view)
        
        mapview.addSubview(searchTextView)
        
        searchTextView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 12, paddingRight: 12, height: 50)
    }
    
    func requestPermissions(){
        
        
        
        
    }

}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
    
}


