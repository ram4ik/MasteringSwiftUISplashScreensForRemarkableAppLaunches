//
//  ContainerView.swift
//  MasteringSwiftUISplashScreensForRemarkableAppLaunches
//
//  Created by Ramill Ibragimov on 9/26/23.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isSplashScreenViewPresented = false
    
    var body: some View {
        if isSplashScreenViewPresented {
            ContentView()
        } else {
            SplashScreenView(isPressented: $isSplashScreenViewPresented)
        }
    }
}

#Preview {
    ContainerView()
}
