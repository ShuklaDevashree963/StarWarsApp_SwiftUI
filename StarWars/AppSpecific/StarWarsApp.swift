//
//  StarWarsApp.swift
//  StarWars
//
//  Created by Devashree KS on 22/01/22.
//

import SwiftUI

@main
struct StarWarsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
