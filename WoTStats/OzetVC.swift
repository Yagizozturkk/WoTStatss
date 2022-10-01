//
//  OzetVC.swift
//  WoTStats
//
//  Created by Yagizozturk on 30.09.2022.
//

import UIKit

class OzetVC: UIViewController {

    var nickOzet : String?
    
    @IBOutlet weak var nickClan: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nickClan.text = "\(nickOzet!)"
        nickClan?.font = UIFont(name: "Anton-Regular", size: 27)
        nickClan.layer.masksToBounds = true
        nickClan.layer.cornerRadius = 11
    }

    @IBAction func anaEkranaDonus(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func buttonEnBasa(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
