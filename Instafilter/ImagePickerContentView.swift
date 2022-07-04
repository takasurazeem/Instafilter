//
//  ImagePickerContentView.swift
//  Instafilter
//
//  Created by Takasur Azeem on 04/07/2022.
//

import SwiftUI

struct ImagePickerContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
            }
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker()
            }
        }
    }
}

struct ImagePickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerContentView()
    }
}
