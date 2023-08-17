//
//  MapView.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/16/23.
//

import SwiftUI
import MapKit
struct MapView: View {
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.712776, longitude: -74.005974), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .frame(width: 400, height: 300)

            NavigationView {
                    VStack {
                        Link(destination: URL(string: "http://maps.apple.com/?address=")!) {
                            Text("Open Apple Maps")
                        }
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                    Spacer()
                }

                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Spacer()
                        
                        NavigationLink(destination: FavoriteView()) {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.green) // Set the color to green
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                        NavigationLink(destination: SearchView()) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.green) // Set the color to green
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                        NavigationLink(destination: MapView()) {
                            Image(systemName: "map.fill")
                                .foregroundColor(.green) // Set the color to green
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                }
            }
        }

    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }

