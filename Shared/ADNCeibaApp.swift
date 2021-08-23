//
//  ADNCeibaApp.swift
//  Shared
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 19/08/21.
//

import SwiftUI

@main
struct ADNCeibaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
