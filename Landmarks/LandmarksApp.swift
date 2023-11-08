//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Andy St Fort on 11/6/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
