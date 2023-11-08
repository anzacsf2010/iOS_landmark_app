//
//  ContentView.swift
//  Landmarks
//
//  Created by Andy St Fort on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
