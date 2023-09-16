//
//  V7_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/16/23.
//

import Foundation
import UIKit
import MapKit

class V7_VC : UIViewController {
    
    var map: MKMapView = {
        let map = MKMapView()
        return map
    } ()
    
    var container : UIView = {
        let container = UIView()
        container.backgroundColor = .purple
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        container.layer.cornerRadius = 20
        return container
    } ()
    
    var tracking : UILabel = {
        let lb = UILabel()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.text = "Tracking"
        lb.textAlignment = .left
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 30)
        lb.textColor = .brown
        return lb
    }()
    
    let person_tracked = ["Bob", "Alex", "Jones"]
    
    public func setup_UI () {
        
        let x = view.frame.width
        let y = view.frame.height
        
        view.backgroundColor = .light_white
        view.addSubview(map)
        map.frame = CGRect(x: 0, y: 0, width: x, height: y * 0.6)
        
        view.addSubview(container)
        container.frame = CGRect(x: 0, y: map.frame.maxY-15, width: x, height: y-container.frame.minY)
        
        view.addSubview(tracking)
        tracking.frame = CGRect(x: 0, y: 0, width: tracking.intrinsicContentSize.width + 10, height: tracking.intrinsicContentSize.height )
        tracking.center = CGPoint(x: container.frame.midX, y: container.frame.minY + 40)
        
        let width = 65
        let x_padding = 20
        let y_padding = 20
        
        for (index, item) in person_tracked.enumerated() {
            let btn = UIButton()
            btn.frame = CGRect(x: 0, y: 0, width: width, height: width)
//            btn.setImage(UIImage(named: "meditation"), for: .normal)
            btn.imageView?.contentMode = .scaleToFill
            btn.backgroundColor = .blue
            btn.layer.cornerRadius = CGFloat(width/2)
            btn.titleLabel!.font = Style.myApp.font(for: .subtitle)
            btn.setTitleColor(.light_white, for: .normal)
            
            view.addSubview(btn)
            //handles circle buttons
            if index == 0 {
                btn.frame = CGRect(x: x_padding, y: Int(tracking.frame.maxY) + y_padding, width: width, height: width)
            }
            
            btn.frame = CGRect(x: x_padding, y: Int(tracking.frame.maxY) + y_padding * (index+1) + width * index, width: width, height: width)
            
            let name = UILabel()//handles labels
            
            name.text = person_tracked[index]
            name.font = Style.myApp.font(for: .information)
            name.frame = CGRect(x: btn.frame.maxX + 20, y: btn.frame.minY+10, width: name.intrinsicContentSize.width, height: name.intrinsicContentSize.height)
            name.textAlignment = .center
            view.addSubview(name)
            
            let distance = UILabel()//handles labels
            
            distance.text = "0.5 mile"
            distance.frame = CGRect(x: x-20-distance.intrinsicContentSize.width, y: name.frame.minY, width: distance.intrinsicContentSize.width, height: distance.intrinsicContentSize.height)
            distance.textAlignment = .right
            view.addSubview(distance)
            
            let online = UILabel()//handles labels
            
            online.text = "Online"
            online.font = Style.myApp.font(for: .information)
            online.frame = CGRect(x: btn.frame.maxX + 20, y: name.frame.maxY+5, width: online.intrinsicContentSize.width, height: online.intrinsicContentSize.height)
            online.textAlignment = .center
            view.addSubview(online)
            
        }
    }
    
    
    
    override func viewDidLoad () {
        super.viewDidLoad()
        setup_UI()
    }
}
