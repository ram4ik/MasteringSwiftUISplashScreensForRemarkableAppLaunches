//
//  ContentView.swift
//  MasteringSwiftUISplashScreensForRemarkableAppLaunches
//
//  Created by Ramill Ibragimov on 9/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "swift")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .foregroundColor(.orange)
    }
}

#Preview {
    ContentView()
}
