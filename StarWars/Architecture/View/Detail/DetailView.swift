//
//  DetailView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI
import CoreData


struct DetailView: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    
    var body: some View {
        List {
            ForEach(items) { item in
                NavigationLink {
                    
                } label: {
                    
                }
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
        }
        .navigationBarTitle(Text("Planet name"))
        .foregroundColor(StarWarsConstants.Colors.appThemeColor)
        .navigationBarTitleDisplayMode(.large)
        .background(StarWarsConstants.Colors.darkBackgroundColor)
        .listStyle(.plain)
    }
}


struct DetailView_Previews: PreviewProvider {
   
    static var previews: some View {
        DetailView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
}

