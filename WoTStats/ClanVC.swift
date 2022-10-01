//
//  ClanVC.swift
//  WoTStats
//
//  Created by Yagizozturk on 30.09.2022.
//

import UIKit

class ClanVC: UIViewController {

    @IBOutlet weak var labelClan: UILabel!
    
    @IBOutlet weak var textFieldClan: UITextField!
    
    @IBOutlet weak var buttonClanSearch: UIButton!
    
    @IBOutlet weak var TopCStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelClan.text = "Which clan you looking for?"
        labelClan?.font = UIFont(name: "Anton-Regular", size: 27)
        labelClan.layer.masksToBounds = true
        labelClan.layer.cornerRadius = 11
        
        TopCStack.layer.masksToBounds = true
        TopCStack.layer.cornerRadius = 865
        
        self.navigationItem.title = "WoTStats"
        
        let gorunus = UINavigationBarAppearance()
        gorunus.titleTextAttributes = [.font: UIFont(name: "Anton-Regular", size: 21)!, .foregroundColor: UIColor(named: "YaziRenk")!]
        gorunus.configureWithTransparentBackground()
        
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.standardAppearance = gorunus
        navigationController?.navigationBar.compactAppearance = gorunus
        navigationController?.navigationBar.scrollEdgeAppearance = gorunus
        
    }
    override func viewDidAppear(_ animated: Bool) {
        buttonClanSearch?.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18)
    }

    @IBAction func buttonSearcClan(_ sender: Any) {
        performSegue(withIdentifier: "toOzetScreen", sender: nil)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOzetScreen" {
            let clanName = textFieldClan.text
            
            let toOzetVC = segue.destination as! OzetVC
            toOzetVC.nickOzet = clanName
        }
    }
    
}
