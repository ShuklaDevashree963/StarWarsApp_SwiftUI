//
//  CardView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI


struct CardView: View {
   
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
        .background(StarWarsConstants.Colors.lightBackgroundColor)
        .cornerRadius(StarWarsConstants.cornerRadius)
    }
    
}


struct CardView_Previews: PreviewProvider {
   
    static var previews: some View {
        CardView()
    }
    
}
