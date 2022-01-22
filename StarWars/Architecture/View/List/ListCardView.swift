//
//  DetailHomeCardView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI


struct ListCardView: View {
   
    var body: some View {
        VStack {
            Image("placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
 
            HStack {
                VStack(alignment: .leading) {
                    Text("\(StarWarsConstants.Texts.planet) at \("--id")")
                        .font(.headline)
                        .foregroundColor(StarWarsConstants.Colors.appThemeColor)
                    Text("Planet name")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(StarWarsConstants.Colors.appThemeColor)
                        .lineLimit(3)
                    Text("Having \("--x") residents and appeared in \("--y") films. Also, having \("--weather") and \("--%") water sources")
                        .font(.caption)
                        .foregroundColor(StarWarsConstants.Colors.appThemeColor)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(StarWarsConstants.cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: StarWarsConstants.cornerRadius)
                .stroke(StarWarsConstants.Colors.appThemeColor, lineWidth: 1)
        )
    }
    
}


struct ListCardView_Previews: PreviewProvider {
   
    static var previews: some View {
        ListCardView()
    }
    
}

