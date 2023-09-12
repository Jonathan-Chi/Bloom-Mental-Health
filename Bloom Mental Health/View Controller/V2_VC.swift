//
//  V1_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/12/23.
//

import Foundation
import UIKit

class V2_VC : UIViewController {
    
    var container : UIView = {
        let container = UIView()
        container.backgroundColor = .blue
        container.frame = CGRect(x:0, y:0, width: 400, height: 200)
        container.layer.cornerRadius = 20
        return container
    } ()
    
    var back_btn : UIButton = {
        let btn = UIButton()
        btn.layer.frame = CGRect(x:0, y:0, width: 36, height: 36)
        btn.imageView?.contentMode = .scaleAspectFit
        
        let bookmarkimage = UIImage(systemName: "arrow.backward.circle")
        let bookmarkimageView = UIImageView(image: bookmarkimage!)
        bookmarkimageView.translatesAutoresizingMaskIntoConstraints = false
        btn.addSubview(bookmarkimageView)
        bookmarkimageView.tintColor = .lightGray
        bookmarkimageView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        bookmarkimageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        bookmarkimageView.centerYAnchor.constraint(equalTo: btn.centerYAnchor, constant: 0).isActive = true
        bookmarkimageView.centerXAnchor.constraint(equalTo: btn.centerXAnchor, constant: 0).isActive = true
        
        return btn
    } ()
    
    var topic_btn : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 155, height: 62)
        btn.setTitle("By Topic", for: .normal)
        btn.backgroundColor = .yellow
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
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 16
        btn.titleLabel!.font = Style.myApp.font(for: .button)
        btn.setTitleColor(.brown, for: .normal)
        btn.setImage(UIImage(systemName: "doc"), for: .normal)
        btn.imageView?.tintColor = .lightGray
        btn.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8.0, bottom: 0, trailing: 30.0)
        return btn
    }()
    
    var scroll_view : UIScrollView = {
        let sv = UIScrollView()
        sv.layer.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        sv.isScrollEnabled = true
        
        return sv
    } ()
    
    var content1 : UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 343, height: 181)
        view.backgroundColor = UIColor(red: 1, green: 0.891, blue: 0.829, alpha: 1)
        view.layer.cornerRadius = 16
        return view
    } ()
    
    var content2 : UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 131, height: 114)
        view.backgroundColor = UIColor(red: 0.804, green: 0.865, blue: 1, alpha: 1)
        view.layer.cornerRadius = 16
        return view
    } ()
    
    var content3 : UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 131, height: 114)//from here width and height will be set in the function
        view.backgroundColor = UIColor(red: 1, green: 0.908, blue: 0.925, alpha: 1)
        view.layer.cornerRadius = 16
        return view
    } ()
    
    var content4 : UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 131, height: 114)
        view.backgroundColor = UIColor(red: 1, green: 0.979, blue: 0.792, alpha: 1)
        view.layer.cornerRadius = 16
        return view
    } ()
    
    var content5 : UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 131, height: 114)//from here width and height will be set in the function
        view.backgroundColor = UIColor(red: 0.932, green: 0.9, blue: 1, alpha: 1)
        view.layer.cornerRadius = 16
        return view
    } ()
    
    
    
    
    public func setup_UI () {
        
        let x = view.frame.width
        let y = view.frame.height
        
        view.backgroundColor = .white
        
        view.addSubview(container)
        container.frame = CGRect(x:0, y:0, width:x, height: y/4)
        
        view.addSubview(back_btn)
        back_btn.layer.frame = CGRect(x:18, y:52, width:50, height: 50)
        
        view.addSubview(topic_btn)
        topic_btn.center = CGPoint(x: x/2-topic_btn.frame.width/2-7.5, y: container.frame.maxY-22-topic_btn.frame.height/2)
        
        view.addSubview(schedule_btn)
        schedule_btn.center = CGPoint(x: x/2+schedule_btn.frame.width/2+7.5, y: topic_btn.frame.midY)
        
        view.addSubview(scroll_view)
        scroll_view.layer.frame = CGRect(x: 0, y: container.frame.maxY, width: x, height: y-container.frame.height)
        scroll_view.contentSize = CGSize(width: x, height: 2*y)
        
        let x_padding = 21
        let mid_padding = 16
        let y_padding = 16
        
        scroll_view.addSubview(content1)
        content1.layer.frame = CGRect(x:x_padding, y: y_padding, width: Int(x)-2*x_padding, height: 180)
        
        scroll_view.addSubview(content2)
        content2.frame = CGRect(x:x_padding, y: y_padding + Int(content1.frame.maxY), width: Int(x/2) - (mid_padding/2 + x_padding), height: 200)
        
        scroll_view.addSubview(content3)
        content3.frame = CGRect(x:Int(x)/2+mid_padding/2, y: y_padding + Int(content1.frame.maxY), width: Int(x/2) - (mid_padding/2 + x_padding), height: 270)
        
        scroll_view.addSubview(content4)
        content4.frame = CGRect(x:x_padding, y: y_padding + Int(content2.frame.maxY), width: Int(x/2) - (mid_padding/2 + x_padding), height: 270)
        
        scroll_view.addSubview(content5)
        content5.frame = CGRect(x:Int(x)/2+mid_padding/2, y: y_padding + Int(content3.frame.maxY), width: Int(x/2) - (mid_padding/2 + x_padding), height: 200)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        setup_UI()
        
        
    }
}
