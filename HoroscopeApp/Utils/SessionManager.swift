import Foundation

class SessionManager {
    private static let favoriteKey = "favoriteHoroscopeId"
    
    static func setFavoriteHoroscope(id: String) {
        UserDefaults.standard.set(id, forKey: favoriteKey)
    }
    
    static func removeFavoriteHoroscope(id: String) {
        // Verificamos si es el mismo que está guardado
        let current = UserDefaults.standard.string(forKey: favoriteKey)
        if current == id {
            UserDefaults.standard.removeObject(forKey: favoriteKey)
        }
    }

    static func isFavoriteHoroscope(id: String) -> Bool {
        return UserDefaults.standard.string(forKey: favoriteKey) == id
    }
}
