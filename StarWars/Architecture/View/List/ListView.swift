//
//  DetailView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI
import CoreData


struct ListView: View {
    
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
                    ListCardView()
                }
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
        }
        .navigationBarTitle(Text(StarWarsConstants.Texts.planets))
        .navigationBarTitleDisplayMode(.large)
        .foregroundColor(StarWarsConstants.Colors.appThemeColor)
        .background(StarWarsConstants.Colors.darkBackgroundColor)
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(StarWarsConstants.Texts.search) {
                    
                }
            }
            ToolbarItem {
                Button(StarWarsConstants.Texts.sort) {
                    
                }
            }
        }
    }
}


struct ListView_Previews: PreviewProvider {
   
    static var previews: some View {
        ListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
}

