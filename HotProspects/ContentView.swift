//
//  ContentView.swift
//  HotProspects
//
//  Created by Bukhari Sani on 16/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {List
            {
                Text("Taylor Swift")
                    .swipeActions {
                        Button(role: .destructive) {
                            print("Hi")
                        } label: {
                            Label("Delete", systemImage: "minus.circle")
                        }
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            print("Hi")
                        } label: {
                            Label("Pin", systemImage: "pin")
                        }
                        .tint(.orange)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
