//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/01/26.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
