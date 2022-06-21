//
//  CoreImageIntroContentView.swift
//  Instafilter
//
//  Created by Takasur Azeem on 19/06/2022.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct CoreImageIntroContentView: View {
    
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
        
    }
    
    func loadImage() {
//        image = Image("Arang")
        guard let inputImage = UIImage(named: "Arang") else { return }
        let beginImage = CIImage(image: inputImage)
        
        let context = CIContext()
        let currentFilter = CIFilter.crystallize()
        currentFilter.inputImage = beginImage
        currentFilter.radius = 200
        
        // get a CIImage from our filter or exit if that fails
        guard let outputImage = currentFilter.outputImage else { return }
        
        // attempt to get a CGImage from our CIImage
        if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            // convert that to a UIImage
            let uiImage = UIImage(cgImage: cgImage)

            // and convert that to a SwiftUI image
            image = Image(uiImage: uiImage)
        }
    }
}

struct CoreImageIntroContentView_Previews: PreviewProvider {
    static var previews: some View {
        CoreImageIntroContentView()
    }
}
