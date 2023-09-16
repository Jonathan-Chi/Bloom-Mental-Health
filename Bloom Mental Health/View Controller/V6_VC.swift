//
//  V6_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/15/23.
//

import Foundation
import UIKit
import MapKit

class V6_VC : UIViewController {
    
    var scroll_view : UIScrollView = {
        let sv = UIScrollView()
        sv.layer.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        sv.isScrollEnabled = true
        sv.backgroundColor = .light_white
        
        return sv
    } ()
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
        lb.textColor = .light_white
        return lb
    }()
    
    var map : MKMapView = {
        let map = MKMapView()
        map.showsUserLocation = true
        return map
    } ()
    
    var call_container : UIView = {
        let container = UIView()
        container.backgroundColor = .light_white
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        container.layer.borderWidth = 2
        container.layer.cornerRadius = 4
        container.layer.borderColor = UIColor.lightGray.cgColor
        return container
    } ()
    
    var call_title : UILabel = {
        let lb = UILabel()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.text = "Call Mood"
        lb.textAlignment = .left
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 18)
        lb.textColor = .black
        return lb
    }()
    
    var mute_container : UIView = {
        let container = UIView()
        container.backgroundColor = .light_white
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        container.layer.borderWidth = 2
        container.layer.cornerRadius = 4
        container.layer.borderColor = UIColor.lightGray.cgColor
        return container
    } ()
    
    var mute_title : UILabel = {
        let lb = UILabel()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.text = "Remote Unmuting"
        lb.textAlignment = .left
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 18)
        lb.textColor = .black
        return lb
    }()
    
    var mute_switch : UISwitch = {
        let lb = UISwitch()
        lb.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        lb.isOn = true
        lb.onTintColor = .purple
        return lb
    }()
    
    
    var sleep_view : Stat_View  = {
        let v = Stat_View()
        return v
    } ()

    var step_view : Stat_View = {
        let v = Stat_View()
        return v
    } ()
    
    var contacts_container : UIView = {
        let container = UIView()
        container.backgroundColor = .light_white
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        container.layer.borderWidth = 2
        container.layer.cornerRadius = 4
        container.layer.borderColor = UIColor.lightGray.cgColor
        return container
    } ()
    
    
    var emergency_contacts_lb : UILabel = {
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
        
        let x_padding = 15
        let y_padding = 15
        
        let width = 90

        
        view.backgroundColor = .purple
        
        view.addSubview(scroll_view)
        scroll_view.layer.frame = CGRect(x: 0, y: 0, width: x, height: y)
        scroll_view.contentSize = CGSize(width: x, height: 2*y)
        
        scroll_view.addSubview(container)
        container.frame = CGRect(x:scroll_view.frame.minX, y:scroll_view.frame.minY, width:x, height: y/8)
        
        
        scroll_view.addSubview(home_lb)
        home_lb.frame = CGRect(x: 30, y: container.frame.maxY-22-home_lb.frame.height, width: 100, height: 25)
        
        scroll_view.addSubview(map)
        map.frame = CGRect(x: CGFloat(x_padding), y: container.frame.maxY+20, width: x-CGFloat(x_padding*2), height: 200)
        
        scroll_view.addSubview(call_container)
        call_container.frame = CGRect(x: x_padding, y: Int(map.frame.maxY) + y_padding, width: Int(x-CGFloat(x_padding*2)), height: 150)
        
        scroll_view.addSubview(call_title)
        call_title.frame = CGRect(x: CGFloat(x_padding) + call_container.frame.minX, y: CGFloat(Int(call_container.frame.minY) + y_padding), width: call_title.intrinsicContentSize.width+10, height: call_title.intrinsicContentSize.height + 10)
        
        scroll_view.addSubview(mute_container)
        mute_container.frame = CGRect(x: x_padding, y: Int(call_container.frame.maxY) + y_padding, width: Int(x-CGFloat(x_padding*2)), height: 100)
        
        scroll_view.addSubview(mute_title)
        mute_title.frame = CGRect(x: CGFloat(x_padding) + mute_container.frame.minX, y: CGFloat(Int(mute_container.frame.minY) + y_padding), width: mute_title.intrinsicContentSize.width+10, height: mute_title.intrinsicContentSize.height + 10)
        
        scroll_view.addSubview(mute_switch)
        mute_switch.center = CGPoint(x: x/2, y: mute_title.frame.maxY + 20)
        
        //STATS
        let x_padding_stats = 8
        
        scroll_view.addSubview(sleep_view)
        sleep_view.frame = CGRect(x: x_padding, y: Int(mute_container.frame.maxY) + y_padding, width: Int(x/2) - x_padding - x_padding_stats, height: 110)
        
        scroll_view.addSubview(step_view)
        step_view.frame = CGRect(x: Int(x)/2 + x_padding_stats, y: Int(mute_container.frame.maxY) + y_padding, width: Int(x/2) - x_padding - x_padding_stats, height: 110)
        
        scroll_view.addSubview(contacts_container)
        contacts_container.frame = CGRect(x: x_padding, y: Int(step_view.frame.maxY) + y_padding, width: Int(x) - x_padding*2, height: 250)
        
        scroll_view.addSubview(emergency_contacts_lb)
        emergency_contacts_lb.frame = CGRect(x: CGFloat(x_padding)*2, y: contacts_container.frame.minY+20, width: emergency_contacts_lb.intrinsicContentSize.width, height: emergency_contacts_lb.intrinsicContentSize.height+10)
        
        for (index, item) in array_for_button.enumerated() {
            let btn = UIButton()
            btn.frame = CGRect(x: 0, y: 0, width: width, height: width)
            btn.setTitle(array_for_button[index], for: .normal)
            btn.backgroundColor = .purple
            btn.layer.cornerRadius = CGFloat(width/2)
            btn.titleLabel!.font = Style.myApp.font(for: .subtitle)
            btn.setTitleColor(.light_white, for: .normal)

            scroll_view.addSubview(btn)

            btn.frame = CGRect(x: x_padding * (index+3) + width * index, y: Int(emergency_contacts_lb.frame.maxY) + y_padding, width: width, height: width)

            let lb = UILabel()//handles labels

            lb.text = array_for_button[index]
            lb.frame = CGRect(x: 0, y: 0, width: lb.intrinsicContentSize.width, height: lb.intrinsicContentSize.height)
            lb.textAlignment = .center
            scroll_view.addSubview(lb)
            lb.center = CGPoint(x: btn.frame.midX, y: btn.frame.maxY + 20)


            if index != array_for_button.count - 1 {
                let btn = UIButton()
                btn.setTitle("Edit Contact", for: .normal)
                btn.titleLabel!.font = Style.myApp.font(for: .information)
                btn.setTitleColor(.systemPurple, for: .normal)

                scroll_view.addSubview(btn)
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

