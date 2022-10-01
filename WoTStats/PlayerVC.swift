//
//  PlayerVC.swift
//  WoTStats
//
//  Created by Yagizozturk on 30.09.2022.
//

import UIKit

class PlayerVC: UIViewController {

    @IBOutlet weak var labelPlayer: UILabel!
    
    @IBOutlet weak var playerSearch: UITextField!
    
    @IBOutlet weak var stackPlayer: UIStackView!
    
    @IBOutlet weak var buttonPlayer: UIButton!
    
    //Stack labels
    
    @IBOutlet weak var top3: UILabel!
    @IBOutlet weak var firstP: UILabel!
    @IBOutlet weak var secondP: UILabel!
    @IBOutlet weak var thirdP: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelPlayer.text = "Who you looking for ?"
        labelPlayer?.font = UIFont(name: "Anton-Regular", size: 27)
        labelPlayer.layer.masksToBounds = true
        labelPlayer.layer.cornerRadius = 11
        
        stackPlayer.layer.masksToBounds = true
        stackPlayer.layer.cornerRadius = 8
        
        
        self.navigationItem.title = "WoTStats"
        let gorunus = UINavigationBarAppearance()
        gorunus.titleTextAttributes = [.font: UIFont(name: "Anton-Regular", size: 21)!, .foregroundColor: UIColor(named: "YaziRenk")!]
        gorunus.configureWithTransparentBackground()
        
        
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.standardAppearance = gorunus
        navigationController?.navigationBar.compactAppearance = gorunus
        navigationController?.navigationBar.scrollEdgeAppearance = gorunus
        
        top3?.font = UIFont(name: "Anton-Regular", size: 17)
        firstP?.font = UIFont(name: "Anton-Regular", size: 17)
        secondP?.font = UIFont(name: "Anton-Regular", size: 17)
        thirdP?.font = UIFont(name: "Anton-Regular", size: 17)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        buttonPlayer.titleLabel?.font = UIFont(name: "Anton-Regular", size: 18.0)
        
    }
    
    @IBAction func playerSearch(_ sender: Any) {
        
        performSegue(withIdentifier: "toRankingScreen", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toRankingScreen" {
            
            let nickName = playerSearch.text
            
            let destination = segue.destination as! RankingVC
            destination.nickName = nickName
                
            }
        }
}
    

