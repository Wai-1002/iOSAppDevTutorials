//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/08/20.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
