//
//  SearchView.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/16/23.
//
import SwiftUI
struct SearchView: View {
    @State private var name = ""
    
    
    var body: some View {
        NavigationStack{
                VStack {
                    Image("eatforall4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    
                    RoundedRectangle(cornerRadius: 20) .frame(width: 200, height: 45) .foregroundColor(.white) .overlay(
                        HStack { Image(systemName: "magnifyingglass")
                                .frame(width: 3, height: 3)
                                .foregroundColor(.gray)
                                .padding(.leading, 5)
                            
                            TextField("Search for...", text: $name)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black) .padding(.leading, 5)
                            
                            Spacer()
                            
                            
                            
                            
                            if name == "Panera" {
                                NavigationLink(destination: McDonaldsFilter() ) {
                                    Text("Enter")
                                }
                                  .buttonStyle(.borderedProminent)
                                .tint(Color(red: 0.592, green: 0.83, blue: 0.3))
                                .navigationBarBackButtonHidden(false)
                                
                                
                            }
                            
                            
                            Spacer()
                            
                            
                            
                            /* NavigationLink(destination: location) {
                             Text("Search for restaurant")
                             }
                             .font(.title2)
                             .buttonStyle(.borderedProminent)
                             .tint(Color(red: 0.272, green: 0.776, blue: 0.048))
                             */
                        }
                        
                    )
                }
                .padding()
                
            }
        }
    }
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView()
        }
    }

