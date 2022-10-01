//
//  ViewController.swift
//  WoTStats
//
//  Created by Yagizozturk on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNick: UILabel!
    
    //Stacks
    @IBOutlet weak var TopPStack: UIStackView!
    @IBOutlet weak var TopCStack: UIStackView!
    
    //player and clan search
    @IBOutlet weak var topPSearch: UIButton!
    @IBOutlet weak var topCSearch: UIButton!
    
    //Website and login
    @IBOutlet weak var buttonWebsite: UIButton!
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "WoTStats"
        self.navigationItem.backButtonTitle = "Back"
        
        let gorunus = UINavigationBarAppearance()
        gorunus.titleTextAttributes = [.font: UIFont(name: "Anton-Regular", size: 21)!, .foregroundColor: UIColor(named: "YaziRenk")!]
        
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.standardAppearance = gorunus
        navigationController?.navigationBar.compactAppearance = gorunus
        navigationController?.navigationBar.scrollEdgeAppearance = gorunus
        
        labelNick?.font = UIFont(name: "Anton-Regular", size: 27)
        labelNick.text = "Welcome to the WoTStats"
        labelNick.layer.masksToBounds = true
        labelNick.layer.cornerRadius = 11
        
        TopPStack.layer.masksToBounds = true
        TopPStack.layer.cornerRadius = 8
        
        TopCStack.layer.masksToBounds = true
        TopCStack.layer.cornerRadius = 8
        
}
    override func viewDidAppear(_ animated: Bool) {
        topPSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18.0)
        topCSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18.0)
        
        buttonWebsite.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18.0)
        buttonLogin.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18.0)
    }
    
    @IBAction func butttonSearchP(_ sender: Any) {
        
        performSegue(withIdentifier: "toPlayerScreen", sender: nil)
        
    }
    
    @IBAction func buttonSearchC(_ sender: Any) {
        
        performSegue(withIdentifier: "toClanScreen", sender: nil)
        
    }
}



/*override func viewDidAppear(_ animated: Bool) {
 topPSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 topCSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 
 buttonWebsite.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 buttonLogin.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
}
override func viewWillAppear(_ animated: Bool) {
 
 topPSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 topCSearch.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 
 buttonWebsite.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
 buttonLogin.titleLabel?.font = UIFont(name: "Anton-Regular", size: 20.0)
}*/
