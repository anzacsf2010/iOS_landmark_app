//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Andy St Fort on 11/7/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack (alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                        .font(.subheadline)
                }
                .padding(20)
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
            
            Spacer()
        }
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
