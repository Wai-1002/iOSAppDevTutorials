//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/01/26.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
