//
//  SmartFinanceTrackerApp.swift
//  SmartFinanceTracker
//
//  Created by Harvy Segura on 1/19/25.
//

import SwiftUI

@main
struct SmartFinanceTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
