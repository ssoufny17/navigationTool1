//
//  navigationToolApp.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/16/23.
//


import SwiftUI



@main

struct iterationsApp: App {

    

    init() {

        printFonts()

    }

    

    func printFonts() {

        let fontFamilyNames = UIFont.familyNames

        

        for familyName in fontFamilyNames {

            print("--------")

            print("Font Family name -> [\(familyName)]")

            let names = UIFont.fontNames(forFamilyName: familyName)

            print("Font names ==> [\(names)]")

        }

    }

    var body: some Scene {

        WindowGroup {

            ContentView()

        }

    }

}
/* struct McDonaldsMapApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MapView()
            }
        }
    }
} */

