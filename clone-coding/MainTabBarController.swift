//
//  MainTabBarController.swift
//  clone-coding
//
//  Created by 김민성 on 2021/07/08.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print("MainTabBarController - viewDidLoad() called")
        
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "첫번째", bgColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번째", bgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번째", bgColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
        let fifthNC = UINavigationController.init(rootViewController: ScrollView(title: "나의 당근"))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, forthNC, fifthNC]
        
        let firstTabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName:"airplayaudio"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "동네생활", image: UIImage(systemName:"airplayvideo"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "내 근처", image: UIImage(systemName:"arrow.clockwise.icloud.fill"), tag: 2)
        let forthTabBarItem = UITabBarItem(title: "채팅", image: UIImage(systemName:"arrow.down.left.video.fill"), tag: 3)
        let fifthTabBarItem = UITabBarItem(title: "나의 당근", image: UIImage(systemName:"safari.fill"), tag: 4)
        
        // 네비게이션 바 흰색
        UINavigationBar.appearance().barTintColor = .white
        
        
        // 바텀탭바 흰색, 아이콘 검은색
        tabBar.barTintColor = .white
        tabBar.tintColor = .black   
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        forthNC.tabBarItem = forthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
    }
}
