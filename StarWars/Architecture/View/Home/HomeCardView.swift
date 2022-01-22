//
//  HomeCardView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI


struct HomeCardView: View {
   
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Spacer()
            }
            
            Text(StarWarsConstants.Texts.planets)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(StarWarsConstants.Colors.appThemeColor)
                .multilineTextAlignment(.center)
                .padding()
                .frame(height: 150)
        }
        .cornerRadius(StarWarsConstants.cornerRadius)
//        .background(StarWarsConstants.Colors.darkBackgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: StarWarsConstants.cornerRadius)
                .stroke(StarWarsConstants.Colors.appThemeColor, lineWidth: 1)
        )
    }
    
}


struct HomeCardView_Previews: PreviewProvider {
   
    static var previews: some View {
        HomeCardView()
    }
    
}
