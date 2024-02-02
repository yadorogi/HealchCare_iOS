import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterBlackItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBlackItalic, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterBlackItalic":
            result = self.kInterBlackItalic(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        default:
            result = self.kInterSemiBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBlackItalic: String = "Inter-BlackItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
    }
}
