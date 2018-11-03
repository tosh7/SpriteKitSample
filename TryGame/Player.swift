//
//  Player.swift
//  TryGame
//
//  Created by Satoshi Komatsu on 2018/11/03.
//  Copyright © 2018 Satoshi Komatsu. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    func movePlayer(moveLeft: Bool) {
        if moveLeft {
            print("Move left")
            self.position.x -= 10
        } else {
            print("Move Right")
            self.position.x += 10
        }
    }
}
