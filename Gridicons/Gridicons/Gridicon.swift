import Foundation

/// Creates Gridicon icons at requested sizes, and caches icons that have
/// already been generated.
///
public final class Gridicon: NSObject {
    public static let defaultSize = CGSize(width: 24.0, height: 24.0)

    fileprivate static let cache = NSCache<AnyObject, AnyObject>()

    /// Removes all cached Gridicon images from the cache.
    ///
    static func clearCache() {
        cache.removeAllObjects()
    }
    
    /// - returns: A template image of the specified Gridicon type, at the default size.
    ///
    public static func iconOfType(_ type: GridiconType) -> UIImage {
        return iconOfType(type, withSize: defaultSize)
    }
    
    // These are two separate methods (rather than one method with a default argument) because Obj-C
    
    /// - returns: A template image of the specified Gridicon type, at the specified size.
    public static func iconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage {
        if let icon = cachedIconOfType(type, withSize: size) {
            return icon
        }
        
        let icon = generateIconOfType(type, withSize: size).withRenderingMode(.alwaysTemplate)
        cache.setObject(icon, forKey: "\(type.rawValue)-\(size.width)-\(size.height)" as AnyObject)
        
        return icon
    }
    
    fileprivate static func cachedIconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage? {
        return cache.object(forKey: "\(type.rawValue)-\(size.width)-\(size.height)" as AnyObject) as? UIImage
    }
    
    fileprivate static func generateIconOfType(_ type: GridiconType, withSize size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        let image = renderer.image { _ in
            type.icon.draw(in: CGRect(origin: .zero, size: size))
        }
        return image
    }
}
