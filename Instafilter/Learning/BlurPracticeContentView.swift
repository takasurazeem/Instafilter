//
//  BlurPracticeContentView.swift
//  Instafilter
//
//  Created by Takasur Azeem on 18/06/2022.
//

import SwiftUI

struct BlurPracticeContentView: View {
    
    @State private var blurAmount = 0.0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { newValue in
                    print("New value is \(newValue)")
                }
        }
    }
}

struct BlurPracticeContentView_Previews: PreviewProvider {
    static var previews: some View {
        BlurPracticeContentView()
    }
}
