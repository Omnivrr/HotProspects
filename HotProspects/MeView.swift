//
//  MeView.swift
//  HotProspects
//
//  Created by Bukhari Sani on 04/09/2023.
//
import CoreImage
import CoreImage.CIFilterBuiltins
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
                
                Image(uiImage: generateQRCode(from: "\(name)\n\(emailAddress)"))
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .navigationTitle("Kabala")
        }
    }
    
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        
        if let outputImage = filter.outputImage {
        if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
            return UIImage(cgImage: cgimg)
            
        }
    }
    
    return UIImage(systemName: "xmark.circle") ?? UIImage()
}
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
