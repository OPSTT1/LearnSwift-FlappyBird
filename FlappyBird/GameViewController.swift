//
//  GameViewController.swift
//  FlappyBird
//
//  Created by papaya on 16/4/11.
//  Copyright (c) 2016年 Li Haomiao. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let sk试图 = self.view as? SKView {
            if sk试图.scene == nil {
                let 长宽比 = sk试图.bounds.size.height / sk试图.bounds.size.width
                let 场景 = GameScene(size:CGSize(width: 320, height: 320*长宽比))
                sk试图.showsFPS = true
                sk试图.showsNodeCount = true
                sk试图.showsPhysics = true
                sk试图.ignoresSiblingOrder = true
                
                场景.scaleMode = .AspectFill
                sk试图.presentScene(场景)
            }
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
