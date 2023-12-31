//
//  ContentView.swift
//  HotProspects
//
//  Created by Bukhari Sani on 16/08/2023.
//
import SwiftUI


struct ContentView: View {
    @StateObject var prospects = Prospects()
    var body: some View {
        TabView {
            ProspectsView(filter: .none)
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }
            
            ProspectsView(filter: .contacted)
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            
            ProspectsView(filter: .uncontacted)
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
            MeView()
                .tabItem {
                    Label("Me", systemImage: "person.fill")
            }
        }
        .environmentObject(prospects)
    }
}


struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
