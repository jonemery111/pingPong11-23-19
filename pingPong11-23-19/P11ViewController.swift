//
//  11ViewController.swift
//  pingPong11-23-19
//
//  Created by jon emery on 11/23/19.
//  Copyright © 2019 jon emery. All rights reserved.
//

import UIKit

class P11ViewController: UIViewController {


    
    var player1 = 0
    var player2 = 0
    let gamePoint = 11
    var player1Win = 0
    var player2Win = 0
    
    @IBOutlet weak var player1Score: CustomLabel!
    
    @IBOutlet weak var player2Score: CustomLabel!
    
    @IBOutlet weak var player1Button: CustomButton!
    
    @IBOutlet weak var player2Button: CustomButton!
    
    @IBOutlet weak var winLabel: UILabel!
    
    @IBOutlet weak var player1GamesWon: UILabel!
    
    @IBOutlet weak var player2GamesWon: UILabel!
    
    @IBOutlet weak var resetButton: CustomResetButton!
    
    
    
    func restartGame() {
            player1 = 0
            player2 = 0
            player1Score.text = "P1: 0"
            player2Score.text = "P2: 0"
            player1Button.isHidden = false
            player2Button.isHidden = false
            winLabel.isHidden = true
    
    
        }
    
    func playValue() -> Bool {
        let totalScore = (player1 + player2)
        if totalScore % 5 == 0 {
            print("change service")
            return true
        }else {
            return false
        }
    }
    
    func changeLabelShadow(highlighed: Bool) {
        if highlighed {
            self.player1Score.setHighlightedLabel()
            self.player2Score.setUnHighlightedLabel()
        }else{
            self.player1Score.setUnHighlightedLabel()
            self.player2Score.setHighlightedLabel()
            
        }
        
    }
    
    
        func scoreButtonHidden() {
            player1Button.isHidden = true
            player2Button.isHidden = true
        }
        
        func playerWin() {
            if player1 >= gamePoint && player1 >= player2 + 2 {
                print("player 1 wins")
                
                scoreButtonHidden()
                winLabel.text = "Player:1 WIN!!!"
                winLabel.isHidden = false
                player1Win += 1
                player1GamesWon.text = "\(player1Win)"
                winNotification()
    
            }else if player2 >= gamePoint && player2 >= player1 + 2 {
                print("player 2 Wins")
                scoreButtonHidden()
                winLabel.text = "Player:2 Win!!!"
                winLabel.isHidden = false
                player2Win += 1
                player2GamesWon.text = "\(player2Win)"
                winNotification()
            }
    
    
        }
    
        func winReset() {
            player1Win = 0
            player1GamesWon.text = "0"
            player2Win = 0
            player2GamesWon.text = "0"
    
        }
    func winNotification() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    let customlabel = CustomLabel()
    
    
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
//              player1Score.layer.cornerRadius = 22
//              player1Score.clipsToBounds = true
        
              player2Score.layer.cornerRadius = 22
              player2Score.clipsToBounds = true
    
              resetButton.layer.cornerRadius = 22
              resetButton.clipsToBounds = true
    
            player1GamesWon.layer.cornerRadius = 22
            player1GamesWon.clipsToBounds = true
    
            player2GamesWon.layer.cornerRadius = 22
            player2GamesWon.clipsToBounds = true
            
            
        }
    
  
    
    
    
    @IBAction func player1ButtonPressed(_ sender: CustomButton) {
        player1Button.pulsate()
        player1 += 1
        player1Score.text = "P1: \(player1)"
        playerWin()
        changeLabelShadow(highlighed: playValue())
        
    }
    
    @IBAction func player2ButtonPressed(_ sender: CustomButton) {
        player2Button.pulsate()
        player2 += 1
        player2Score.text = "P2: \(player2)"
        playerWin()
        changeLabelShadow(highlighed: playValue())
    }
    
    @IBAction func resetButtonPressed(_ sender: CustomResetButton) {
        restartGame()
    }
    
    
    @IBAction func winReset(_ sender: CustomResetButton) {
        winReset()
    }
    
       
    
    
}
