//
//  GamePlayScene.swift
//  TryGame
//
//  Created by Satoshi Komatsu on 2018/11/03.
//  Copyright © 2018 Satoshi Komatsu. All rights reserved.
//

import UIKit
import SpriteKit

class GamePlayScene: SKScene {
    
    var player: Player!
    var blMove = false
    var moveLeft = false
    var center: CGFloat?
    
    override func didMove(to view: SKView) {
        print("The Scene was loaded")
        
        center = (self.scene?.size.width)! / (self.scene?.size.height)!
        player = self.childNode(withName: "Player") as? Player
    }
    
    override func update(_ currentTime: TimeInterval) {
        managePlayer()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch start")
        
        for touch in touches {
            let location = touch.location(in: self)
            
            if location.x > center! {
                moveLeft = false
            } else {
                moveLeft = true
            }
            blMove = true
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch end")
        blMove = false
    }
    
    
    func managePlayer() {
        if blMove {
            player.movePlayer(moveLeft: moveLeft)
        }
    }
}
