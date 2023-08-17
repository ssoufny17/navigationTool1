import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationStack {
                    
                    VStack {
                        Image("eatforall3")
                            .resizable()
                            .scaledToFit()
                        //   .frame(maxWidth: 300, maxHeight: 300)
                        
                        
                        Text("Top Picks")
                            .font(.title)
                        // .padding(.top, 20)
                        
                        //   Spacer()
                        
                        NavigationLink(destination: McDonaldsFilter()) {
                            
                            Image("panera")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                                .frame(width: 150, height: 150)
                          
                                       
                            //                            .resizable()
                            //                            .scaledToFit()
                            //                            .frame(maxWidth: 300, maxHeight: 300)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        
                        Image("cava")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .frame(width: 150, height: 150)
                        
                        .toolbar {
                            ToolbarItemGroup(placement: .bottomBar) {
                                Spacer()
                                
                                NavigationLink(destination: FavoriteView()) {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.green)
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                                
                                NavigationLink(destination: SearchView()) {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.green)
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                                
                                NavigationLink(destination: MapView()) {
                                    Image(systemName: "map.fill")
                                        .foregroundColor(.green)
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                            }
                        }
                    }
                }
                  
            }
        }
    }
    
    struct NavigationStack<Content: View>: View {
        let content: () -> Content
        
        init(@ViewBuilder content: @escaping () -> Content) {
            self.content = content
        }
        
        var body: some View {
#if os(iOS)
            content()
                .navigationBarTitleDisplayMode(.inline)
#else
            content()
#endif
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

