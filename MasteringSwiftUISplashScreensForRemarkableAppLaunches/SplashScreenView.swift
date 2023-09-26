//
//  SplashScreenView.swift
//  MasteringSwiftUISplashScreensForRemarkableAppLaunches
//
//  Created by Ramill Ibragimov on 9/26/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Binding var isPressented: Bool
    
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    @State private var systemImageOpacity = 0.0
    @State private var imageOpacity = 1.0
    
    @State private var opacity = 1.0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ZStack {
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .opacity(systemImageOpacity)
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .opacity(imageOpacity)
            }
            .scaleEffect(scale)
        }
        .opacity(opacity)
        .onAppear() {
            withAnimation(.easeInOut(duration: 1.5)) {
                scale = CGSize(width: 1, height: 1)
                systemImageOpacity = 1
            }
            
            for i in 0..<7 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 + Double(i) * 0.1, execute: {
                    if imageOpacity == 0.0 {
                        imageOpacity = 1
                    } else {
                        imageOpacity = 0
                    }
                })
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeIn(duration: 0.35)) {
                    scale = CGSize(width: 50, height: 50)
                    opacity = 0
                }
            })
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.9, execute: {
                withAnimation(.easeIn(duration: 0.2)) {
                    isPressented.toggle()
                }
            })
        }
    }
}

#Preview {
    SplashScreenView(isPressented: .constant(true))
}
