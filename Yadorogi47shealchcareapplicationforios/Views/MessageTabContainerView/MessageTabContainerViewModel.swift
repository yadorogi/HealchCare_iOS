import Foundation
import SwiftUI

class MessageTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabTabviewList: [String] = ["All", "Widget", "Private"]
    @Published var selectedTabviewIndex: Int = 0
}
