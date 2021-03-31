//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Azhar on 26/03/2021.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruits: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruits)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // TITLE
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //NUTRITION
                        FruitNutrientsView(fruit: fruits)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruits.title)".uppercased())
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    // MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruits: fruitsData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
