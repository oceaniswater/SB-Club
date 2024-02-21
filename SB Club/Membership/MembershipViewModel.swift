//
//  MembershipViewModel.swift
//  SB Club
//
//  Created by Mark Golubev on 21/02/2024.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

final class MembershipViewModel: ObservableObject {
    @Published var photoUrlString: String?
    @Published var accountNumber: Int?
    @Published var barcode: UIImage?
    
    let generator = BarcodeGenerator()
    
    func getBarcode() {
        barcode = generator.generateBarcode(text: "234234234")
    }
}


struct BarcodeGenerator {
    let context = CIContext()
    let generator = CIFilter.code128BarcodeGenerator()
 
    func generateBarcode(text: String) -> UIImage {
        let generator = CIFilter.code128BarcodeGenerator()
        generator.message = Data(text.utf8)
 
        if let outputImage = generator.outputImage,
           let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
 
            let uiImage = UIImage(cgImage: cgImage)
 
            return uiImage
        }
 
        return UIImage(systemName: "barcode")!
 
    }
}
