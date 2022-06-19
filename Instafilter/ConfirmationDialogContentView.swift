//
//  ConfirmationDialogContentView.swift
//  Instafilter
//
//  Created by Takasur Azeem on 19/06/2022.
//

import SwiftUI

struct ConfirmationDialogContentView: View {
    
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text("Hello, World!")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                Button("Red") { backgroundColor = .red }
                Button("Green") { backgroundColor = .green }
                Button("Blue") { backgroundColor = .blue }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Select a new color")
            }
    }
}

struct ConfirmationDialogContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogContentView()
    }
}
