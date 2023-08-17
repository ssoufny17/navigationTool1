//
//  FilteredOptionsView.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/16/23.
//

import SwiftUI

struct FilteredOptionsView: View {
    var filter: String

    var body: some View {
        VStack {
            Text("Filtered \(filter) Options at McDonald's")
                .font(.custom("DINCondensed-Bold", size: 26))
                .padding()

            // Add your filtered options content here
        }
        .navigationBarTitle("Filtered \(filter) Options")
    }
}
