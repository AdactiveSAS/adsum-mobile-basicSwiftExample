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
        options.apiKey  = [apiKey]
        options.site    = [site]
        options.device  = [device]
        options.apiBaseUrl  = "http://api.adsum.io"
        
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
