//
//  DetailHomeCardView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI


struct DetailCardView: View {
   
    var body: some View {
        VStack {
            Image("placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .cornerRadius(StarWarsConstants.cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: StarWarsConstants.cornerRadius)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
    
}


struct DetailCardView_Previews: PreviewProvider {
   
    static var previews: some View {
        DetailCardView()
    }
    
}

