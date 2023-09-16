//
//  V9_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/16/23.
//

import Foundation
import UIKit

class V9_VC: UIViewController {
    
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
    
    var fitness : UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.text = "Fitness & Wellness"
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 16)
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    var recommended : UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.layer.borderColor = UIColor.lightGray.cgColor
        lb.layer.borderWidth = 2
        lb.layer.cornerRadius = 10
        lb.text = "Recommended"
        lb.textAlignment = .center
        lb.font = UIFont(name: "EpilogueRoman-Bold", size: 12)
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    var content_1 : Fitness_btn = {
        let date_view = Fitness_btn()
        date_view.frame = CGRect(x: 0, y: 0, width: 350, height: 176)
        date_view.backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 0.47, alpha: 1)
        date_view.layer.cornerRadius = 10
        return date_view
    } ()
    
    
    var content_2 : Fitness_btn = {
        let date_view = Fitness_btn()
        date_view.frame = CGRect(x: 0, y: 0, width: 350, height: 176)
        date_view.backgroundColor = UIColor(red: 0.97, green: 0.64, blue: 0.47, alpha: 1)
        date_view.layer.cornerRadius = 10
        return date_view
    } ()
    
    var content_3 : Fitness_btn = {
        let date_view = Fitness_btn()
        date_view.frame = CGRect(x: 0, y: 0, width: 350, height: 176)
        date_view.backgroundColor = UIColor(red: 0.35, green: 0.66, blue: 0.9, alpha: 1)
        date_view.layer.cornerRadius = 10
        return date_view
    } ()
    
    
    
    public func setup_UI () {
        
        let x = view.frame.width
        let y = view.frame.height
        
        let x_padding = 21
        let mid_padding = 16
        let y_padding = 12
        
        view.backgroundColor = .light_white

        view.addSubview(back_btn)
        back_btn.layer.frame = CGRect(x:18, y:52, width:50, height: 50)
        
        view.addSubview(fitness)
        fitness.layer.frame = CGRect(x: CGFloat(x_padding), y: back_btn.frame.maxY + 48, width: fitness.intrinsicContentSize.width, height: fitness.intrinsicContentSize.height)
        
        view.addSubview(recommended)
        recommended.layer.frame = CGRect(x: CGFloat(x_padding), y: fitness.frame.maxY + CGFloat(y_padding), width: recommended.intrinsicContentSize.width+15, height: recommended.intrinsicContentSize.height+15)
        
        view.addSubview(content_1)
        content_1.layer.frame = CGRect(x: CGFloat(x_padding), y: recommended.frame.maxY + CGFloat(y_padding), width: x-CGFloat(x_padding*2), height: 180)
        
        view.addSubview(content_2)
        content_2.layer.frame = CGRect(x: CGFloat(x_padding), y: content_1.frame.maxY + CGFloat(y_padding), width: x-CGFloat(x_padding*2), height: 180)
        
        view.addSubview(content_3)
        content_3.layer.frame = CGRect(x: CGFloat(x_padding), y: content_2.frame.maxY + CGFloat(y_padding), width: x-CGFloat(x_padding*2), height: 180)
        
//        var shadows = UIView()
//        shadows.frame = content_1.frame
//        shadows.clipsToBounds = false
//        view.addSubview(shadows)
//        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 10)
//        let layer0 = CALayer()
//        layer0.shadowPath = shadowPath0.cgPath
//        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        layer0.shadowOpacity = 1
//        layer0.shadowRadius = 4
//        layer0.shadowOffset = CGSize(width: 0, height: 4)
//        layer0.bounds = shadows.bounds
//        layer0.position = shadows.center
//        shadows.layer.addSublayer(layer0)
//        shadows.center = content_1.center
        
        
        

        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup_UI()
    }
}
