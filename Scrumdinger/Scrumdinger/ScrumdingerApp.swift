//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/01/26.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    @State private var errorWarapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        errorWarapper = ErrorWrapper(error: error, guidance: "Try again later.")
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        errorWarapper = ErrorWrapper(error: error, guidance: "Scrumdinger will load sample data and continue.")
                    }
                }
                .sheet(item: $errorWarapper) {
                    store.scrums = DailyScrum.sampleData
                } content: { wrapper in
                    ErrorView(errorWrapper: wrapper)
                }
        }
    }
}
