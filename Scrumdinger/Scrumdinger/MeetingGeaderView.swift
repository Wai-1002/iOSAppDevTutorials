//
//  MeetingGeaderView.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/08/17.
//

import SwiftUI

struct MeetingGeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    private var progress: Double {
        guard totalSeconds > 0 else { return 1}
        return Double(secondsElapsed) / Double(secondsRemaining)
    }
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elasped")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time rmaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .labelStyle(.trailingIcon)
        .padding([.top, . horizontal])
    }
}

struct MeetingGeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingGeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
            .previewLayout(.sizeThatFits)
    }
}
