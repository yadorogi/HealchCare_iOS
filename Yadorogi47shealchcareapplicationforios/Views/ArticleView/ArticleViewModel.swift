import Foundation
import SwiftUI

class ArticleViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var search: String = ""
}
