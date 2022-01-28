import Foundation
import UIKit

struct AppCustomFonts {
    
    static let regularFont = "Blunt"
    static let boldFont = "Lato-Bold"
    static let thinFont = "Lato-Hairline"
    
}

extension UIFont {
    
    static func regularFont(size: CGFloat) ->UIFont {
        let name = AppCustomFonts.regularFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
    
    static func boldFont(size: CGFloat) ->UIFont {
        let name = AppCustomFonts.boldFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
    
    static func thinFont(size: CGFloat) ->UIFont {
        let name = AppCustomFonts.thinFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
}
