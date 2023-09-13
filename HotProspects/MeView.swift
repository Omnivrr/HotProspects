//
//  MeView.swift
//  HotProspects
//
//  Created by Bukhari Sani on 04/09/2023.
//
import CoreImage
import SwiftUI

struct MeView: View {
    @State private var name = "Bukhari"
    @State private var emailAddress = "akbukharisani@gmail.com"
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                    .textContentType(.name)
                    .font(.title3)
                
                TextField("Email address", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .font(.title3)
            }
            .navigationTitle("Kabala")
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
