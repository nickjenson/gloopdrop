//
//  SpriteKitHelper.swift
//  gloopdrop
//
//  Created by Nick Jenson on 5/6/22.
//

import Foundation
import SpriteKit

// MARK: - SPRITEKIT HELPERS

// Set up shared z-positions
enum Layer: CGFloat {
    case background
    case foreground
    case player // highest index
}

// MARK: - SPRITEKIT EXTENSIONS
extension SKSpriteNode {
    
    // Used to load texture arrays for animations
    func loadTextures(atlas: String, prefix: String, startsAt: Int, stopsAt: Int) -> [SKTexture] {
        var textureArray = [SKTexture]()
        let textureAtlas = SKTextureAtlas(named: atlas)
        for i in startsAt...stopsAt {
            let textureName = "\(prefix)\(i)"
            let temp = textureAtlas.textureNamed(textureName)
            textureArray.append(temp)
        }
        return textureArray
    }
}
