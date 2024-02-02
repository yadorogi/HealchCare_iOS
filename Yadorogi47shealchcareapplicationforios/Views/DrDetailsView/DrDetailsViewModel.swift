import Foundation
import SwiftUI

class DrDetailsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var datesStartDate: Date? = nil
    @Published var datesEndDate: Date? = nil
}
