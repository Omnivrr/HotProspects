//
//  ContentView.swift
//  HotProspects
//
//  Created by Bukhari Sani on 16/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var output = ""

    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }

    func fetchReadings() async {
        do {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            output = "Found \(readings.count) readings"
        } catch {
            print("Download error")
        }
    }
}


struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
