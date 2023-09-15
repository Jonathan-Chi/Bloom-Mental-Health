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
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 18)
        lb.textColor = .black
        return lb
    }()
    
    var array_for_button = ["Neil", "Jenny", "Add"]
    
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
        
        let x_padding = 30
        let y_padding = 15
        
        let width = 90
        
        for (index, item) in array_for_button.enumerated() {
            let btn = UIButton()
            btn.frame = CGRect(x: 0, y: 0, width: width, height: width)
            btn.setTitle(array_for_button[index], for: .normal)
            btn.backgroundColor = .purple
            btn.layer.cornerRadius = CGFloat(width/2)
            btn.titleLabel!.font = Style.myApp.font(for: .subtitle)
            btn.setTitleColor(.white, for: .normal)
            
            view.addSubview(btn)
            //handles circle buttons
            if index == 0 {
                btn.frame = CGRect(x: x_padding, y: Int(emergency_contact.frame.maxY) + y_padding, width: width, height: width)
            }
            
            btn.frame = CGRect(x: x_padding * (index+1) + width * index, y: Int(emergency_contact.frame.maxY) + y_padding, width: width, height: width)
            
            let lb = UILabel()//handles labels
            
            lb.text = array_for_button[index]
            lb.frame = CGRect(x: 0, y: 0, width: lb.intrinsicContentSize.width, height: lb.intrinsicContentSize.height)
            lb.textAlignment = .center
            view.addSubview(lb)
            lb.center = CGPoint(x: btn.frame.midX, y: btn.frame.maxY + 20)
            
            
            if index != array_for_button.count - 1 {
                let btn = UIButton()
                btn.setTitle("Edit Contact", for: .normal)
                btn.titleLabel!.font = Style.myApp.font(for: .information)
                btn.setTitleColor(.systemPurple, for: .normal)
                
                view.addSubview(btn)
                btn.frame = CGRect(x: 0, y: 0, width: btn.intrinsicContentSize.width, height: btn.intrinsicContentSize.height)
                btn.center = CGPoint(x: lb.frame.midX, y: lb.frame.maxY + 10)
                
            }
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup_UI()
    }
    
    
}
