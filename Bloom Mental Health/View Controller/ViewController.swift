//
//  ViewController.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/11/23.
//

import UIKit

class ViewController: UIViewController {

    
    var recreation : UILabel = {
        let title = UILabel()
        title.text = "Recreation"
        title.font = Style.myApp.font(for: .title)
        title.textColor = .brown
        title.textAlignment = .center
        title.frame = CGRect(x: 0, y: 0, width: 275, height: 55)
        return title
    } ()
    
    var icon : UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 126, height: 126)
        image.image = UIImage(named: "recreation")
        return image
    }()
    
    var topic_btn : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 155, height: 62)
        btn.setTitle("By Topic", for: .normal)
        btn.backgroundColor = .light_white
        btn.layer.cornerRadius = 16
        btn.titleLabel!.font = Style.myApp.font(for: .button)
        btn.setTitleColor(.brown, for: .normal)
        btn.imageView?.tintColor = .lightGray
        btn.setImage(UIImage(systemName: "book.closed")?.withTintColor(.lightGray), for: .normal)
        btn.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8.0, bottom: 0, trailing: 30.0)
        return btn
    }()
    
    var schedule_btn : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 155, height: 62)
        btn.setTitle("Schedule", for: .normal)
        btn.backgroundColor = .light_white
        btn.layer.cornerRadius = 16
        btn.titleLabel!.font = Style.myApp.font(for: .button)
        btn.setTitleColor(.brown, for: .normal)
        btn.setImage(UIImage(systemName: "doc"), for: .normal)
        btn.imageView?.tintColor = .lightGray
        btn.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8.0, bottom: 0, trailing: 30.0)
        return btn
    }()
    
    public func setup_UI () {
        
        let x = view.frame.width
        let y = view.frame.height
        
        view.backgroundColor = .blue
        
        view.addSubview(recreation)
        recreation.center = CGPoint(x: x/2, y: y/3)
        
        view.addSubview(icon)
        icon.center = CGPoint(x: x/2, y: recreation.frame.maxY+17+icon.frame.height/2)
        
        view.addSubview(topic_btn)
        topic_btn.center = CGPoint(x: x/2-topic_btn.frame.width/2-7.5, y: icon.frame.maxY+31+topic_btn.frame.height/2)
        
        view.addSubview(schedule_btn)
        schedule_btn.center = CGPoint(x: x/2+schedule_btn.frame.width/2+7.5, y: topic_btn.frame.midY)
        
        
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        setup_UI()
        
    }


}

