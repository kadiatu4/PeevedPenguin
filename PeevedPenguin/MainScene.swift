//
//  MainScene.swift
//  PeevedPenguin
//
//  Created by Kadiatou Diallo on 6/28/16.
//  Copyright © 2016 Kadiatou Diallo. All rights reserved.
//

import SpriteKit

class MainScene: SKScene {
    /* UI Connection */
    var buttonPlay: MSButtonNode!
    
    override func didMoveToView(view: SKView) {
        //Setup your scene here
        
        //Set UI connection
        buttonPlay = childNodeWithName("buttonPlay") as! MSButtonNode
        
        //Set restart button selection handler
        buttonPlay.selectedHandler = {
            
            //grab reference to SpiteKit view
            let skView = self.view as SKView!
            //Load Game scene
            let scene = GameScene(fileNamed: "GameScene") as GameScene!
            
            //Ensure correct aspect mode
            scene.scaleMode = .AspectFit
            
            //Show Debug
            skView.showsPhysics = true
            skView.showsDrawCount = true
            skView.showsFPS = true
            
            //Start Game Scene
            skView.presentScene(scene)
            
            
        }
    }
}
