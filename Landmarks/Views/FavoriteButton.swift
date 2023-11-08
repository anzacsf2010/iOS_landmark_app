//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Andy St Fort on 11/8/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
