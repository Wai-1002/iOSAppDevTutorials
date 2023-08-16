//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/01/26.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elasped")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time rmaining")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text ("Speaker 1 of 3")
                Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel("Next speaker")
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}