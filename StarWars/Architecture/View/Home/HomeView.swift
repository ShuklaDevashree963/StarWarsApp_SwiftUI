//
//  HomeView.swift
//  StarWars
//
//  Created by Devashree KS on 23/01/22.
//

import SwiftUI
import CoreData


struct HomeView: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    init() {
         UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [
           .foregroundColor: UIColor.white]
        UINavigationBar.appearance().barTintColor = .black
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        ListView()
                    } label: {
                        HomeCardView()
                    }
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .navigationBarTitle(Text(StarWarsConstants.Texts.appName))
            .foregroundColor(StarWarsConstants.Colors.appThemeColor)
            .navigationBarTitleDisplayMode(.large)
            .background(StarWarsConstants.Colors.darkBackgroundColor)
            .listStyle(.plain)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
   
    static var previews: some View {
        HomeView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
}
