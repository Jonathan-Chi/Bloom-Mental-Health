//
//  V3_VC.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/12/23.
//

import Foundation
import UIKit

class V3_VC : UIViewController {
    
    var scroll_view : UIScrollView = {
        let sv = UIScrollView()
        sv.layer.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        sv.isScrollEnabled = true
        sv.backgroundColor = .white
        
        return sv
    } ()
    
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
        
        let bookmarkimage = UIImage(systemName: "xmark.circle.fill")
        let bookmarkimageView = UIImageView(image: bookmarkimage!)
        bookmarkimageView.translatesAutoresizingMaskIntoConstraints = false
        btn.addSubview(bookmarkimageView)
        bookmarkimageView.tintColor = .white
        bookmarkimageView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        bookmarkimageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        bookmarkimageView.centerYAnchor.constraint(equalTo: btn.centerYAnchor, constant: 0).isActive = true
        bookmarkimageView.centerXAnchor.constraint(equalTo: btn.centerXAnchor, constant: 0).isActive = true
        
        return btn
    } ()
    
    
    var class_lb : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.text = "Class"
        lb.textAlignment = .center
        lb.layer.cornerRadius = 6
        lb.layer.borderWidth = 1
        lb.layer.borderColor = UIColor.white.cgColor
        lb.font = Style.myApp.font(for: .information)
        lb.frame = CGRect(x: 0, y: 0, width: 50, height: 25)
        return lb
    } ()

    
    var num_class_lb : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.textAlignment = .center
        lb.text = "16 classes"
        lb.layer.cornerRadius = 6
        lb.layer.borderWidth = 1
        lb.layer.borderColor = UIColor.white.cgColor
        lb.font = Style.myApp.font(for: .information)
        lb.frame = CGRect(x: 0, y: 0, width: 80, height: 25)
        return lb
    } ()

    
    var topic_lb : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.text = "Tech Support"
        lb.font = Style.myApp.font(for: .subtitle)
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    var topic_desription : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.text = "Progamming for children aged 8-10"
        lb.font = Style.myApp.font(for: .information)
        lb.frame = CGRect(x: 0, y: 0, width: 125, height: 25)
        return lb
    } ()
    
    var favorite_btn : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 155, height: 62)
        btn.setTitle("Add to favorites", for: .normal)
        btn.backgroundColor = .purple
        btn.layer.cornerRadius = 10
        btn.titleLabel!.font = Style.myApp.font(for: .button)
        btn.setTitleColor(UIColor(red: 0.388, green: 0.38, blue: 0.949, alpha: 1), for: .normal)
        btn.imageView?.tintColor = .systemPurple
        btn.setImage(UIImage(systemName: "heart")?.withTintColor(.lightGray), for: .normal)
        btn.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8.0, bottom: 0, trailing: 30.0)
        return btn
    }()
    
    var chat_btn : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 130, height: 62)
        btn.setTitle("Join the Chat", for: .normal)
        btn.backgroundColor = UIColor(red: 0.388, green: 0.38, blue: 0.949, alpha: 1)
        btn.layer.cornerRadius = 8
        btn.titleLabel!.font = Style.myApp.font(for: .button)
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
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
        
        view.backgroundColor = .blue
        
        view.addSubview(scroll_view)
        scroll_view.layer.frame = CGRect(x: 0, y: 0, width: x, height: y)
        scroll_view.contentSize = CGSize(width: x, height: 2*y)
        
        scroll_view.addSubview(container)
        container.frame = CGRect(x:0, y:0, width:x, height: y/4)
        
        
        //MARK: Container
        container.addSubview(back_btn)
        back_btn.layer.frame = CGRect(x:x-80, y:30, width:50, height: 50)
        
        container.addSubview(class_lb)
        class_lb.frame = CGRect(x:x_padding, y: 110, width: 50, height: 25)
        
        container.addSubview(num_class_lb)
        num_class_lb.frame = CGRect(x:class_lb.frame.maxX + 8, y: class_lb.frame.minY, width: 100, height: class_lb.frame.height)
        
        container.addSubview(topic_lb)
        topic_lb.frame = CGRect(x: x_padding, y: Int(class_lb.frame.maxY) + y_padding+8, width: Int(topic_lb.intrinsicContentSize.width)+20, height: 20)
        
        container.addSubview(topic_desription)
        topic_desription.frame = CGRect(x: x_padding, y: Int(topic_lb.frame.maxY) + y_padding, width: Int(topic_desription.intrinsicContentSize.width)+20, height: Int(topic_desription.intrinsicContentSize.height))
        
        scroll_view.addSubview(favorite_btn)
        favorite_btn.frame = CGRect(x: x_padding, y: Int(container.frame.maxY) + 20, width: 180, height: 32)
        
        scroll_view.addSubview(chat_btn)
        chat_btn.frame = CGRect(x: x - CGFloat(x_padding) - chat_btn.frame.width, y: container.frame.maxY + 20, width: 130, height: 32)
        
        scroll_view.addSubview(session_lb)
        session_lb.frame = CGRect(x: CGFloat(x_padding), y: favorite_btn.frame.maxY + 24, width: session_lb.intrinsicContentSize.width + 20, height: session_lb.intrinsicContentSize.height + 20)
        
        
        let session_arr = [session_1, session_2, session_3, session_4]
        let session_y_padding = 10
        
        for (index, item) in session_arr.enumerated() {
            scroll_view.addSubview(item)
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

class Session_btn : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customize()// To set the button color and text size
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()// To set the button color and text size
    }
    
    let symbol = UIImageView()

    let session_name = UILabel()
    
    let instructor_name = UILabel()
    
    let meeting_time = UILabel()
    
    public func customize () {
        layer.cornerRadius = 20
        backgroundColor = UIColor(red: 0.953, green: 0.91, blue: 1, alpha: 1)
        titleLabel?.textColor = UIColor.black
        clipsToBounds = false
        frame = CGRect(x: 0, y: 0, width: 130, height: 62)
        
        symbol.image = UIImage(named: "meditation")
        symbol.translatesAutoresizingMaskIntoConstraints = false
        addSubview(symbol)
    
        symbol.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22).isActive = true
        symbol.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        session_name.text = "Mindfulness"
        session_name.font = Style.myApp.font(for: .subtitle)
        session_name.textColor = .brown
        session_name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(session_name)
        session_name.leadingAnchor.constraint(equalTo: symbol.trailingAnchor, constant: 35).isActive = true
        session_name.topAnchor.constraint(equalTo: self.topAnchor, constant: 60).isActive = true
       
        instructor_name.text = "Instructor Name"
        instructor_name.font = Style.myApp.font(for: .information)
        instructor_name.textColor = .brown
        instructor_name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(instructor_name)
        instructor_name.leadingAnchor.constraint(equalTo: session_name.leadingAnchor).isActive = true
        instructor_name.topAnchor.constraint(equalTo: session_name.bottomAnchor, constant: 8).isActive = true
       
        meeting_time.text = "9:00 AM"
        meeting_time.font = Style.myApp.font(for: .information)
        meeting_time.textColor = .black
        meeting_time.translatesAutoresizingMaskIntoConstraints = false
        addSubview(meeting_time)
        meeting_time.leadingAnchor.constraint(equalTo: session_name.leadingAnchor, constant: 25).isActive = true
        meeting_time.topAnchor.constraint(equalTo: instructor_name.bottomAnchor, constant: 8).isActive = true
        
    }
    
    
}
