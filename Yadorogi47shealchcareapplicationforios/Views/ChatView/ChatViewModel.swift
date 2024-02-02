import Foundation
import SwiftUI

class ChatViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var messageText: String = ""
}
