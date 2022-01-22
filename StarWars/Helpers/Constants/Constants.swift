//
//  Constants.swift
//  StarWars
//
//  Created by Devashree KS on 22/01/22.
//

import SwiftUI

struct StarWarsConstants {
    
    struct Texts {
        static let appName = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
        static let planets = "Planets"
        static let planet = "Planet"
        static let search = "Search"
        static let sort = "Sort"
    }
    
    
    struct Colors {
        static let sepratorColor = Color.gray
        static let appThemeColor = Color.accentColor
        static let lightBackgroundColor = Color.gray.opacity(StarWarsConstants.backgroundOpacity)
        static let darkBackgroundColor = Color.black
        static let appBackgroundColor = Color.accentColor.opacity(StarWarsConstants.backgroundOpacity)
        
    }
    
    static let backgroundOpacity = 0.2
    static let cornerRadius = 20.0
    
}
