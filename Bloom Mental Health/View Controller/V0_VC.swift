////
////  V0_VC.swift
////  Bloom Mental Health
////
////  Created by Jonathan Chi on 9/14/23.
////
//
//import UIKit
//import FirebaseAuth
//import FirebaseDatabase
//import FirebaseStorage
//class V0_Vc : UIViewController {
//    
//    var username_string : String = ""
//    
//    let top_container = UIView()
//    let user_profile_image_view = UIImageView()
//    let notification_view = UIImageView()
//    let title_label = UITextView()
//    let sc_container = UIView()
//    
//    let feeling_container = UIView()
//    let subjects = [["s1","s2"],["s3","s4"],["s5","s6"]]
//    let subjects_colors : [[UIColor]] = [
//        [.systemGreen.withAlphaComponent(0.5), .systemBlue.withAlphaComponent(0.5)],
//        [.systemRed.withAlphaComponent(0.5), .systemPurple.withAlphaComponent(0.5)],
//        [.systemBrown.withAlphaComponent(0.5), .systemMint.withAlphaComponent(0.5)],
//    ]
//    var items_buttons = [[UIButton]]()
//    let item_colors : [UIColor] = [UIColor.systemRed.withAlphaComponent(0.5),UIColor.systemGreen.withAlphaComponent(0.5),UIColor.orange.withAlphaComponent(0.5), UIColor.purple.withAlphaComponent(0.5), UIColor.systemBlue.withAlphaComponent(0.5)]
//    let item_string : [String] = ["Happy","Sad","Angry","Calm","Motivated"]
//    lazy var horizontal_sc : UIScrollView = {
//        let sc = UIScrollView()
//        sc.contentSize = CGSize(width: view.frame.width * 2, height: 96)
//        sc.isUserInteractionEnabled = true
//        sc.alwaysBounceHorizontal = true
//        sc.alwaysBounceVertical = false
//        sc.showsHorizontalScrollIndicator = false
//        sc.showsVerticalScrollIndicator = false
//        sc.isScrollEnabled = true
//        return sc
//    }()
//    lazy var sc : UIScrollView = {
//        let sc = UIScrollView()
//        sc.frame = view.bounds
//        sc.contentSize = CGSize(width: view.frame.width, height: view.frame.height + 300)
//        return sc
//    }()
//    func setup_feeling_items(n : Int) {
//        let w : CGFloat = view.frame.width / 5
//        let m : CGFloat = 1.05
//        for i in 0..<n {
//            let bt = UIButton()
//            let lb = UILabel()
//            let xCor : CGFloat = CGFloat(i) * w * m + 10
//            bt.frame = CGRect(x: xCor, y: 10, width: w, height: w)
//            lb.frame = CGRect(x: xCor, y: w + 12, width: w, height: 16)
//            bt.backgroundColor = item_colors[i]
//            bt.layer.cornerRadius = corner_R
//            bt.clipsToBounds = true
//            
//            lb.backgroundColor = .clear
//            lb.textColor = UIColor.lightGray
//            lb.text = item_string[i]
//            lb.textAlignment = .center
//            lb.font = UIFont.boldSystemFont(ofSize: 12)
//            horizontal_sc.addSubview(bt)
//            horizontal_sc.addSubview(lb)
//        }
//        horizontal_sc.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: w * 1.8)
//        feeling_container.addSubview(horizontal_sc)
//    }
//    
//    func setup_top_UI() {
//        view.addSubview(top_container)
//        view.addSubview(title_label)
//        view.addSubview(feeling_container)
//        view.addSubview(sc_container)
//        feeling_container.translatesAutoresizingMaskIntoConstraints = false
//        top_container.translatesAutoresizingMaskIntoConstraints = false
//        title_label.translatesAutoresizingMaskIntoConstraints = false
//        notification_view.translatesAutoresizingMaskIntoConstraints = false
//        user_profile_image_view.translatesAutoresizingMaskIntoConstraints = false
//        sc_container.translatesAutoresizingMaskIntoConstraints = false
//        
//        
//        top_container.backgroundColor = .clear
//        feeling_container.backgroundColor = .clear
//        feeling_container.alpha = 1
//        guard let username = Auth.auth().currentUser?.email else {return}
//        
//        let userID = Auth.auth().currentUser?.uid
//        DB_REF.child("users").child(userID!).observeSingleEvent(of: .value, with: { snapshot in
//            // Get user value
//            let value = snapshot.value as? NSDictionary
//            let username = value?[USERNAME] as? String ?? ""
//            let bio = value?["bio"] as? String ?? ""
//            let phoneNumber = value?["phoneNumber"] as? String ?? ""
//            let email = value?["email"] as? String ?? ""
//            let bm = value?[BODY_MEASUREMENTS] as? [String] ?? ["p1","p2"]
//            let role_val = value?[ROLE] as? Int ?? 0
//            self.title_label.text = "Welcome Back, \n\(username)"
//        }) { error in
//            print(error.localizedDescription)
//        }
//        
//        print("username : ", username_string)
//        title_label.isUserInteractionEnabled = false
//        title_label.isEditable = false
//        title_label.font = UIFont.boldSystemFont(ofSize: 24)
//        top_container.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1).isActive = true
//        top_container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        top_container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        top_container.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        top_container.addSubview(user_profile_image_view)
//        top_container.addSubview(notification_view)
//        
//        user_profile_image_view.topAnchor.constraint(equalTo: top_container.topAnchor, constant: 1).isActive = true
//        user_profile_image_view.leadingAnchor.constraint(equalTo: top_container.leadingAnchor, constant: 10).isActive = true
//        user_profile_image_view.heightAnchor.constraint(equalToConstant: 36).isActive = true
//        user_profile_image_view.widthAnchor.constraint(equalToConstant: 36).isActive = true
//        user_profile_image_view.layer.cornerRadius = 18
//        user_profile_image_view.layer.borderColor  = image_borderColor.cgColor
//        user_profile_image_view.layer.borderWidth = 3
//        user_profile_image_view.image = UIImage(systemName : "person.circle.fill")
//        user_profile_image_view.backgroundColor = THEME_PURPLE_COLOR
//        user_profile_image_view.clipsToBounds = true
//        user_profile_image_view.tintColor = title_text_color
//        notification_view.topAnchor.constraint(equalTo: top_container.topAnchor, constant: 1).isActive = true
//        notification_view.trailingAnchor.constraint(equalTo: top_container.trailingAnchor, constant: -10).isActive = true
//        notification_view.heightAnchor.constraint(equalToConstant: 36).isActive = true
//        notification_view.widthAnchor.constraint(equalToConstant: 36).isActive = true
//        notification_view.image = UIImage(systemName: "bell.badge")
//        notification_view.backgroundColor = .clear
//        notification_view.clipsToBounds = true
//        notification_view.tintColor = title_text_color
//        
//        title_label.topAnchor.constraint(equalTo: top_container.bottomAnchor, constant: 10).isActive = true
//        title_label.leadingAnchor.constraint(equalTo: top_container.leadingAnchor, constant: 0).isActive = true
//        title_label.trailingAnchor.constraint(equalTo: top_container.trailingAnchor, constant: 0).isActive = true
//        title_label.heightAnchor.constraint(equalToConstant: 96).isActive = true
//        
//        
//        feeling_container.topAnchor.constraint(equalTo: title_label.bottomAnchor, constant: 1).isActive = true
//        feeling_container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        feeling_container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        feeling_container.heightAnchor.constraint(equalToConstant: 140).isActive = true
//        
//        sc_container.topAnchor.constraint(equalTo: feeling_container.bottomAnchor, constant: 1).isActive = true
//        sc_container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        sc_container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        sc_container.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
//        
//        sc.frame = CGRect(x: 0, y: 5, width: view.frame.width, height: view.frame.height)
//        sc_container.addSubview(sc)
//    }
//    
//    
//    func setup_UI_Algorithm(n : Int) {
//        let left : CGFloat = 10
//        let w : CGFloat = view.frame.width / 2 - (left * 1.5)
//        let m : CGFloat = 1.08
//        let mx : CGFloat = 1.06
//        var num : Int = 0
//        for i in 0 ..< n {
//            var inner = [UIButton]()
//            for j in 0 ..< subjects[i].count {
//                let bt = UIButton()
//                let yCor : CGFloat = CGFloat(i) * w * m
//                let xCor : CGFloat = CGFloat(j) * w * mx  + left
//                bt.layer.cornerRadius = corner_R
//                bt.clipsToBounds = true
//                bt.setTitle(subjects[i][j], for: .normal)
//                bt.tag = num
//                bt.frame = CGRect(x: xCor, y: yCor, width: w, height: w)
//                bt.setTitle(subjects[i][j], for: .normal)
//                bt.layer.borderColor = UIColor.darkGray.cgColor
//                bt.layer.borderWidth = 4
//                bt.setTitleColor(.black, for: .normal)
//                bt.backgroundColor = subjects_colors[i][j]
//                bt.layer.cornerRadius = corner_R
//                bt.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.25).cgColor
//                bt.layer.borderWidth = 2
//                bt.layer.shadowOffset = CGSize(width: 1, height: 2)
//                bt.clipsToBounds = true
//                
//                
//                inner.append(bt)
//                num += 1
//                bt.addTarget(self, action: #selector(handle_item(sender :)), for: .touchUpInside)
//                sc.addSubview(bt)
//            }
//            items_buttons.append(inner)
//        }
//    }
//    @objc func handle_item(sender : UIButton) {
//        //        print(sender.titleLabel?.text!)
//        //        let vc = Quiz_VC()
//        //        vc.delegate = self
//        //        let nav = UINavigationController(rootViewController: vc)
//        //        nav.modalPresentationStyle = .fullScreen
//        //        nav.modalTransitionStyle = .crossDissolve
//        //        self.present(nav, animated: true)
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setup_top_UI()
//        setup_feeling_items(n : item_colors.count)
//        setup_UI_Algorithm(n: subjects.count)
//    }
//    
//}
