//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Andy St Fort on 11/7/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filterLandmarks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filterLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("National Landmarks")
        } detail: {
            Text("Select a landmark:")
        }
    }
}

#Preview {
    LandmarkList()
}
