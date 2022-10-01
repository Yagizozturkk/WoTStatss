//
//  RankingVC.swift
//  WoTStats
//
//  Created by Yagizozturk on 30.09.2022.
//

import UIKit

class RankingVC: UIViewController {

    @IBOutlet weak var labelNick: UILabel!
    
    var nickName : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelNick.text = "\(nickName!)"
        labelNick.font = UIFont(name: "Anton-Regular", size: 25.0)
        labelNick.layer.masksToBounds = true
        labelNick.layer.cornerRadius = 11
        
        self.navigationItem.title = "WoTStats"
        
        let gorunus = UINavigationBarAppearance()
        gorunus.titleTextAttributes = [.font: UIFont(name: "Anton-Regular", size: 21)!, .foregroundColor: UIColor(named: "YaziRenk")!]
        gorunus.configureWithTransparentBackground()
        
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.standardAppearance = gorunus
        navigationController?.navigationBar.compactAppearance = gorunus
        navigationController?.navigationBar.scrollEdgeAppearance = gorunus
    }

    @IBAction func buttonToSummary(_ sender: Any) {
        
        performSegue(withIdentifier: "toOzetPop", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOzetPop"{
            let nickOzet = labelNick.text
            
            let toOzetVC = segue.destination as! OzetVC
            toOzetVC.nickOzet = nickOzet
        }
    }
}
