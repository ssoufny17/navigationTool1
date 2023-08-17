//
//  McDonaldsFilter.swift
//  navigationTool
//
//  Created by Sarah Soufny on 8/17/23.
//
import SwiftUI

struct FoodItem {
    let name: String
    let carbContent: Double // in grams
    let fiberContent: Double // in grams
    let isGlutenFree: Bool
}

struct McDonaldsFilter: View {
    let allFoodItems: [FoodItem] = [
        FoodItem(name: "Greek Salad w Chicken", carbContent: 30, fiberContent: 2, isGlutenFree: false),
        FoodItem(name: "Chicken Tikka Masala Bowl", carbContent: 10, fiberContent: 5, isGlutenFree: true),
        FoodItem(name: "Mac and Cheese", carbContent: 15, fiberContent: 8, isGlutenFree: false),
        
        // Add more food items here
    ]
    
    @State private var showLowCarbOnly = false
    @State private var showLowFiberOnly = false
    @State private var showGlutenFreeOnly = false
    
    var filteredFoodItems: [FoodItem] {
        var items = allFoodItems
        if showLowCarbOnly {
            items = items.filter { $0.carbContent <= 20 }
        }
        if showLowFiberOnly {
            items = items.filter { $0.fiberContent <= 3 }
        }
        if showGlutenFreeOnly {
            items = items.filter { $0.isGlutenFree }
        }
        return items
    }
    
    var body: some View {
        VStack {
            Toggle("Low Carb", isOn: $showLowCarbOnly)
            Toggle("Low Fiber", isOn: $showLowFiberOnly)
            Toggle("Gluten-Free", isOn: $showGlutenFreeOnly)
            
            List(filteredFoodItems, id: \.name) { food in
                Text(food.name)
            }
        }
        .padding()
    }
}

struct McDonaldsFilter_Previews: PreviewProvider {
    static var previews: some View {
        McDonaldsFilter()
    }
}
