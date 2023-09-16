//
//  V8_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/16/23.
//

import Foundation
import UIKit

class V8_VC: UIViewController {
    
    var scroll_view : UIScrollView = {
        let sv = UIScrollView()
        sv.isScrollEnabled = true
        sv.layer.cornerRadius = 10
        return sv
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
    
    var date_label : UILabel = {
        let lb = UILabel()
        lb.textColor = .brown
        lb.text = "March 2023"
        lb.font = Style.myApp.font(for: .subtitle)
        return lb
    } ()
    
    var date_sv : UIScrollView = {
        let sv = UIScrollView()
        sv.isScrollEnabled = true
        sv.showsHorizontalScrollIndicator = true
        return sv
    } ()
    
    var session_lb : UILabel = {
        let lb = UILabel()
        lb.textColor = .brown
        lb.text = "Upcoming Sessions"
        lb.font = Style.myApp.font(for: .subtitle)
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    
    var session_1 : Session_btn = { //TO DO: makes an extension for UI Button to make session template
        let btn = Session_btn()
        
        return btn
    }()
    
    var session_2 : Session_btn = {
        let btn = Session_btn()
        return btn
    }()
    
    var session_3 : Session_btn = {
        let btn = Session_btn()
        return btn
    }()
    
    var session_4 : Session_btn = {
        let btn = Session_btn()
        return btn
    }()
    
    public func setup_UI () {
        
        let x = view.frame.width
        let y = view.frame.height
        
        let x_padding = 21
        let mid_padding = 16
        let y_padding = 8
        
        view.backgroundColor = .light_white
        
        view.addSubview(back_btn)
        back_btn.layer.frame = CGRect(x:18, y:52, width:50, height: 50)
        
        view.addSubview(date_label)
        date_label.frame = CGRect(x: 0, y: 0, width: date_label.intrinsicContentSize.width+10, height: date_label.intrinsicContentSize.height)
        date_label.center = CGPoint(x: Int(x)/2, y: Int(back_btn.frame.maxY) + 10)
        //MARK: HORIZONTAL SV
        view.addSubview(date_sv)
        date_sv.layer.frame = CGRect(x:0, y: date_label.frame.maxY, width: x, height: y/9)
        date_sv.contentSize = CGSize(width: x*2, height: y/9)
        
        let date_x_padding = 15
        for i in 1...8 {
            print(i)
            let date_view = UIButton()
            date_view.frame = CGRect(x: 0, y: 0, width: 60, height: Int(date_sv.frame.height) - y_padding*2)
            date_view.backgroundColor = .white
            date_view.layer.cornerRadius = 5
            
            date_view.setTitle("March\n" + String(i), for: .normal)
            date_view.setTitleColor(.brown, for: .normal)
            date_view.titleLabel!.font = Style.myApp.font(for: .button)
            date_view.titleLabel!.textAlignment = .center
            date_view.titleLabel!.numberOfLines = 0 // Dynamic number of lines
            date_view.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
            
            date_sv.addSubview(date_view)
            let distance = (date_x_padding + Int(date_view.frame.width)) * i - Int(date_view.frame.width)
            
            date_view.frame = CGRect(x: distance, y: y_padding, width: 60, height: Int(date_sv.frame.height) - y_padding*2)
            
            
        }
        
        
        //MARK: VERTICAL SV
        view.addSubview(scroll_view)
        scroll_view.layer.frame = CGRect(x: 0, y: date_sv.frame.maxY, width: x, height: y)
        scroll_view.contentSize = CGSize(width: x, height: 2*y)
        scroll_view.backgroundColor = .purple
        
        
        scroll_view.addSubview(session_lb)
        session_lb.frame = CGRect(x: CGFloat(x_padding), y: CGFloat(y_padding)*2, width: session_lb.intrinsicContentSize.width + 20, height: session_lb.intrinsicContentSize.height + 20)
        
        
        let session_arr = [session_1, session_2, session_3, session_4]
        let session_y_padding = 10
        
        for (index, item) in session_arr.enumerated() {
            scroll_view.addSubview(item)
            item.backgroundColor = .light_white
            if index == 0 {//used for the first session
                item.frame = CGRect(x: CGFloat(x_padding), y: session_lb.frame.maxY + CGFloat(session_y_padding), width: x-CGFloat(x_padding*2), height: y/5)
                
            } else {
                item.frame = CGRect(x: CGFloat(x_padding), y: session_arr[index-1].frame.maxY + CGFloat(session_y_padding), width: x-CGFloat(x_padding*2), height: y/5)
            }
        }
                
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        setup_UI()
        
        
    }
}
