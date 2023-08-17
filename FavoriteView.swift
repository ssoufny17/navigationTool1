//
//  FavoriteView.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/16/23.
//
import SwiftUI

struct PaneraLocation: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    var isFavorited: Bool
}

struct FavoriteView: View {
    let paneraLocations: [PaneraLocation] = [
        PaneraLocation(name: "Panera", address: "123 Main St", isFavorited: true),
        PaneraLocation(name: "Sweetgreen", address: "456 Elm St", isFavorited: true),
        PaneraLocation(name: "Cava", address: "789 Oak St", isFavorited: true),
        // Add more locations as needed
    ]
    
    var body: some View {
        NavigationView {
            List(paneraLocations) { location in
                HStack {
                    VStack(alignment: .leading) {
                        Text(location.name)
                            .font(.headline)
                        Text(location.address)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    if location.isFavorited {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("My Favorites")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
