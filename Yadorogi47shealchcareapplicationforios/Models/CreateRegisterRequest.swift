
import Foundation

struct CreateRegisterRequest: Codable {
    var email: String?
    var name: String?
    var password: String?
    var profile: String?
    var role: Int?
    var username: String?
}
