//
//  Getting_Started_with_XcodeApp.swift
//  Getting Started with Xcode
//
//  Created by star.stalker9160 on 13/09/2025.
//

import SwiftUI

@main
struct Getting_Started_with_XcodeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
