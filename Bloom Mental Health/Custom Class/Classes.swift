//
//  Classes.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/15/23.
//

import Foundation
import UIKit

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

class Fitness_btn : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customize()// To set the button color and text size
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()// To set the button color and text size
    }
    
    let symbol = UIImageView()

    let lesson_name = UILabel()
    
    let desc = UILabel()
    
    let meeting_time = UILabel()
    
    public func customize () {
        layer.cornerRadius = 20
        
        
        lesson_name.text = "What is Meditation"
        lesson_name.font = UIFont(name: "EpilogueRoman-Bold", size: 20)
        lesson_name.textColor = .white
        lesson_name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(lesson_name)
        lesson_name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        lesson_name.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
       
        desc.text = "From conflict to harmony"
        desc.font = UIFont(name: "EpilogueRoman-SemiBold", size: 12)
        desc.textColor = .white
        desc.translatesAutoresizingMaskIntoConstraints = false
        addSubview(desc)
        desc.leadingAnchor.constraint(equalTo: lesson_name.leadingAnchor).isActive = true
        desc.topAnchor.constraint(equalTo: lesson_name.bottomAnchor, constant: 8).isActive = true
        
        symbol.image = UIImage(named: "Girl Meditating")
        symbol.translatesAutoresizingMaskIntoConstraints = false
        addSubview(symbol)
        
        symbol.leadingAnchor.constraint(equalTo: desc.trailingAnchor, constant: 0).isActive = true
        symbol.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        symbol.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    
}




class Stat_View : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customize()// To set the button color and text size
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()// To set the button color and text size
    }
    
    let symbol = UIImageView()

    let stat_name = UILabel()
    
    let title = UILabel()
    
    let d = UILabel()
    
    func dropShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = true ? UIScreen.main.scale : 1
    }
    
    public func customize () {
        
        layer.cornerRadius = 20
        backgroundColor = UIColor(red: 0.953, green: 0.91, blue: 1, alpha: 1)
        
        clipsToBounds = true
        frame = CGRect(x: 0, y: 0, width: 130, height: 62)
        
        symbol.image = UIImage(systemName: "moon.stars") //shoeprints.fill
        symbol.translatesAutoresizingMaskIntoConstraints = false
        addSubview(symbol)
    
        symbol.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        symbol.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        
        
        stat_name.text = "Sleep"
        stat_name.font = Style.myApp.font(for: .information)
        stat_name.textColor = .brown
        stat_name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stat_name)
        stat_name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        stat_name.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
       
        title.text = "2:32"
        title.font = Style.myApp.font(for: .subtitle)
        title.textColor = .brown
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        title.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        title.topAnchor.constraint(equalTo: stat_name.bottomAnchor, constant: 10).isActive = true
       
        d.text = "Hours of Sleep Today"
        d.font = Style.myApp.font(for: .information)
        d.textColor = .black
        d.textAlignment = .center
        d.translatesAutoresizingMaskIntoConstraints = false
        addSubview(d)
        d.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        d.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8).isActive = true
      
    }
    
    
}
