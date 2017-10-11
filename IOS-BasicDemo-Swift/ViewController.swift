//
//  ViewController.swift
//  IOS-BasicDemo-Swift
//
//  Created by iMac-Adactive on 11/05/2017.
//  Copyright © 2017 iMac-Adactive. All rights reserved.
//

import UIKit
import Adsum

class ViewController: UIViewController, ADSMapDelegate {
    
    var mapView : AdsumCoreView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up Options (change apiKey, site and device with your own data)
        let options = ADSOptions()
        options.apiKey  = "f2bc584ed0ae8b8753530287fb2fe1b82621359283f2a29e330c30da24f8d2c8"
        options.site    = 404
        options.device  = 561
        options.apiBaseUrl  = "http://api.adsum.io" //Use "http://asia-api.adsum.io" if your site is on our Asian server
        
        //setting up dataManager with options
        let dataManager = ADSDataManager(adsOptions: options)
        
        //setting up the mapView with frame and adsDataManager
        mapView = AdsumCoreView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), adsDataManager: dataManager)
        
        mapView?.add(self);
        
        //add map view as Subview
        self.view.addSubview(mapView!)
        
    }
    
    func floorChanged(_ id: Int) {
        print("Floor Changed : \(id)!")
    }
    
    func mapLoaded() {
        print("Map Loaded !")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
