import Foundation
import SwiftUI

class ScheduleTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabTabviewList: [String] = ["Upcoming", "Completed", "Canceled"]
    @Published var selectedTabviewIndex: Int = 0
}
