import Foundation
import SwiftUI

class DrugDetailsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
}
