import Foundation
import SwiftUI

class PharmacyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var search: String = ""
}
