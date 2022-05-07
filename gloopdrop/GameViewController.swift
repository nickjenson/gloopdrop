//
//  GameViewController.swift
//  gloopdrop
//
//  Created by Nick Jenson on 5/6/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        // ensures everything did load before we override its method
        super.viewDidLoad()
        
        // Create the view
        if let view = self.view as! SKView? {
            // Create the scene
            // let scene = GameScene(size: view.bounds.size)
            let scene = GameScene(size: CGSize(width: 1336, height: 1024))
            
            // Get size of the screen
            // print("scene.size \(scene.size)")
            
            // Set the scale mode to scale to fill the view window
            scene.scaleMode = .aspectFill
            
            // Set the background color
            scene.backgroundColor = UIColor(red: 105/255,
                                            green: 157/255,
                                            blue: 181/255,
                                            alpha: 1.0)
            
            // Present the scene
            view.presentScene(scene)
            
            // Set the view options
            view.ignoresSiblingOrder = false
            view.showsPhysics = false
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
