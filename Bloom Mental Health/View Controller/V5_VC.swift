//
//  V5_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/15/23.
//

import Foundation
import UIKit

class V5_VC : UIViewController {
    
    var container : UIView = {
        let container = UIView()
        container.backgroundColor = .purple
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        return container
    } ()
    
    var home_lb : UILabel = {
        let lb = UILabel()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.text = "Home"
        lb.textAlignment = .left
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 30)
        lb.textColor = .white
        return lb
    }()
    
    var emergency_contact : UILabel = {
        let lb = UILabel()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.text = "Emergency Contacts"
        lb.textAlignment = .left
        lb.font = UIFont(name: "EpilogueRoman", size: 22)
        lb.textColor = .black
        return lb
    }()
    
    public func setup_UI(){
        let x = view.frame.width
        let y = view.frame.height
        
        view.backgroundColor = .white
        
        view.addSubview(container)
        container.frame = CGRect(x:0, y:0, width:x, height: y/6)
        
        
        view.addSubview(home_lb)
        home_lb.frame = CGRect(x: 30, y: container.frame.maxY-22-home_lb.frame.height, width: 100, height: 25)
        
        view.addSubview(emergency_contact)
        emergency_contact.frame = CGRect(x: 40, y: container.frame.maxY+20, width: emergency_contact.intrinsicContentSize.width, height: emergency_contact.intrinsicContentSize.height+10)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup_UI()
    }
    
    
}
