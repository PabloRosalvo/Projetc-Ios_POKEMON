//
//  InfoPokeViewController.swift
//  CocoaPods
//
//  Created by Pablo Rosalvo on 21/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//

import UIKit

class InfoPokeViewController: UIViewController {
   
    @IBOutlet weak var ivFotoInfo: UIImageView!
    
 
    @IBOutlet weak var alert: UIButton!
    var card = Cards()

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(card.name)
       ivFotoInfo.kf.setImage(with: URL(string: card.imageUrl))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func morInfo(_ sender: Any) {
        
        let alert = UIAlertController(title: "Informacoes Pokemon ", message: " Esse pokémon \(card.name ), possui XX de HP e seu número da pokédex é XX.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
