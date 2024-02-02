import Foundation
import SwiftUI

class DashboardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var search: String = ""
}
