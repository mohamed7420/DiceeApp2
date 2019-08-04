//
//  ViewController.swift
//  DiceeApp
//
//  Created by Mohamed on 8/3/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5", "dice6"]

    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        getRandomImage()
        
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        
        getRandomImage()
       
        
        /*
        
        for _ in diceArray{
            
            if randomDiceIndex1 == 1 || randomDiceIndex2 == 1{
                
                diceImageView1.image = UIImage.init(named: diceArray[0])
                diceImageView2.image = UIImage.init(named: diceArray[0])

            }else if randomDiceIndex1 == 2 || randomDiceIndex2 == 2{
                
                diceImageView1.image = UIImage.init(named: diceArray[1])
            }else if randomDiceIndex1 == 3 || randomDiceIndex2 == 3{
                
                diceImageView1.image = UIImage.init(named: diceArray[2])
            }else if randomDiceIndex1 == 4 || randomDiceIndex2 == 4 {
                
                diceImageView1.image = UIImage.init(named: diceArray[3])
            }else if randomDiceIndex1 == 5 || randomDiceIndex2 == 5{
                
                diceImageView1.image = UIImage.init(named: diceArray[4])
            }else if randomDiceIndex1 == 6 || randomDiceIndex2 == 6{
                
                diceImageView1.image = UIImage.init(named: diceArray[5])
            }
            
        }
        */
        /*
        
        print(randomDiceIndex1)
        
        switch randomDiceIndex1 {
        case 1:
            diceImageView1.image = UIImage.init(named: "dice1")
            
        case 2:
            diceImageView1.image = UIImage.init(named: "dice2")
            
        case 3:
            diceImageView1.image = UIImage.init(named: "dice3")
            
        case 4:
            diceImageView1.image = UIImage.init(named: "dice4")
        case 5:
            
            diceImageView1.image = UIImage.init(named: "dice5")
        case 6:
            
            diceImageView1.image = UIImage.init(named: "dice6")
        default:
            diceImageView1.image = UIImage.init(named: "dice1")
        }
        
        switch randomDiceIndex2 {
        case 1:
            diceImageView2.image = UIImage.init(named: "dice1")
            
        case 2:
            diceImageView2.image = UIImage.init(named: "dice2")
            
        case 3:
            diceImageView2.image = UIImage.init(named: "dice3")
            
        case 4:
            diceImageView2.image = UIImage.init(named: "dice4")
        case 5:
            
            diceImageView2.image = UIImage.init(named: "dice5")
        case 6:
            
            diceImageView2.image = UIImage.init(named: "dice6")
        default:
            diceImageView2.image = UIImage.init(named: "dice1")
        }
 */
    }
    
    func getRandomImage(){
        
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        
        diceImageView1.image = UIImage.init(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage.init(named: diceArray[randomDiceIndex2])    }
    
}

