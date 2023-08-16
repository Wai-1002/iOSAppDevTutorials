//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/08/11.
//

import SwiftUI

struct TrailingIconLavelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLavelStyle {
    static var trailingIcon: Self {Self()}
}
