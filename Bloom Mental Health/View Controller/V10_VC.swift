//
//  V10_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/16/23.
//

import Foundation
import UIKit
import AVKit

class V10_VC : UIViewController{
    
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
    
    var icon : UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 126, height: 126)
        image.image = UIImage(named: "recreation")
        return image
    }()
    
    var harmony : UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.text = "Harmony"
        lb.font = Style.myApp.font(for: .subtitle)
        lb.textColor = .black
        lb.textAlignment = .center
        lb.frame = CGRect(x: 0, y: 0, width: 120, height: 35)
        return lb
    } ()
    
    var harmony_description : UILabel = {
        let lb = UILabel()
        
        lb.text = "Find inner harmony and peace through meditation, as you let go of distractions and connect with your true self. With our guided meditations, you can cultivate a state of harmony within yourself, promoting greater emotional balance and overall wellbeing."
        lb.font = Style.myApp.font(for: .information)
        lb.numberOfLines = 0
        lb.textColor = .systemGray
        lb.lineBreakMode = NSLineBreakMode.byWordWrapping
        lb.textColor = .black
        lb.textAlignment = .left
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    var video_player : AVPlayerViewController  = {
        let vc = AVPlayerViewController()
        
        let videoURL = URL(string: "https://www.youtube.com/watch?v=8Xg7E9shq0U")
        
        let player = AVPlayer(url: videoURL!)
        
        vc.player = player
        
        return vc
    } ()
    
    
    
    
    public func setup_UI() {
        
        let x = view.frame.width
        let y = view.frame.height
        
        let x_padding = 21
        let mid_padding = 16
        let y_padding = 12
        
        view.backgroundColor = .light_white

        view.addSubview(back_btn)
        back_btn.layer.frame = CGRect(x:18, y:52, width:50, height: 50)
        
        view.backgroundColor = .light_white
        
        view.addSubview(icon)
        icon.center = CGPoint(x: x/2, y: 200)
        
        view.addSubview(harmony)
        harmony.center = CGPoint(x: x/2, y: icon.frame.maxY + harmony.frame.height/2 + 10)
        
        view.addSubview(harmony_description)
        harmony_description.frame = CGRect(x: CGFloat(x_padding), y: harmony.frame.maxY, width: x - CGFloat(x_padding*2), height: 90)
        
        var divider = UIView()
        divider.frame = CGRect(x: 0, y: 0, width: Int(x)-2*x_padding, height: 2)
        divider.backgroundColor = .gray
        view.addSubview(divider)
        divider.center = CGPoint(x: x/2, y: harmony_description.frame.maxY + CGFloat(y_padding))
        
        view.addSubview(video_player.view)
        video_player.view.frame = CGRect(x: 0, y: Int(divider.frame.maxY) + y_padding*2, width: Int(x), height: 250)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup_UI()
    }
}
