//
//  ContentView.swift
//  ABTrackingExample
//
//  Created by Azzam Ubaidillah on 14/11/23.
//  Copyright © 2023 Azzam Ubaidillah. All rights reserved.
//

import ABTrackingSDK
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, ABTracking!")
        }
        .padding()
        .onAppear {
            // Example of using the SDK
            ABTrackingSDK.trackAppInstallation()
        }
    }
}

#Preview {
    ContentView()
}
