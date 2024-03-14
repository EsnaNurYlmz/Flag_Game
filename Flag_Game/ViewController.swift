//
//  ViewController.swift
//  Flag_Game
//
//  Created by Esna nur Yılmaz on 13.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       dataBaseCopy()
        
    }

    func dataBaseCopy(){
        
        let bundle = Bundle.main.path(forResource: "flag_game", ofType: ".sqlite")
        let target = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let copyDestination = URL(fileURLWithPath: target).appendingPathComponent("flag_game.sqlite")
            if fileManager.fileExists(atPath: copyDestination.path){
                print("There is a database")
            }
            else{
                do{
                    try fileManager.copyItem(atPath: bundle!, toPath: copyDestination.path)
                }
                catch {
                        print(error)
            }
            }
    }

    
    
}

