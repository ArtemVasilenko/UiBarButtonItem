//
//  ViewController.swift
//  UiBarButtonItem
//
//  Created by Артем on 1/8/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 1000, y: 20000, width: 80, height: 20))
        
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "apple")
        
        imageView.image = image
        //self.navigationItem.title = "apple"
        self.navigationItem.titleView = imageView
        //        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector (startSeconVC(param:)))
        
        //        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .done, target: nil, action: nil)
        
        let sumpleSwitch = UISwitch()
        sumpleSwitch.isOn = true
        sumpleSwitch.addTarget(self, action: #selector (switchIsChange(param:)), for: .valueChanged)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: sumpleSwitch)
        
        let items = ["up", "down", "left", "right"]
        let segmentController = UISegmentedControl(items: items)
        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector (segmentControllerTupped(param:)), for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segmentController)
    }
    
    
    
    @objc func startSeconVC(param: UIBarButtonItem) {
        print("add")
    }
    
    @objc func switchIsChange(param: UISwitch) {
        if param.isOn {
            print("switch is On")
        } else {
            print("switch is Off")
        }
    }
    
    @objc func segmentControllerTupped(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("up")
        case 1:
            print("down")
        default:
            break
        }
    }
    
    
}

