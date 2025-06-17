//
//  Horoscope.swift
//  HoroscopeApp
//
//  Created by Tardes on 13/6/25.
//

import Foundation
import UIKit
struct Horoscope {
    let id: String
    let name: String
    let dates: String
    let imageFileName: String
    
    func getImage() -> UIImage {
        return UIImage(named: imageFileName)!
    }
    //preparar la lista que nos devuelve los signos
    
    static let horoscopeList: [Horoscope] = [
        Horoscope(id: "aries", name: "Aries", dates: "21 marzo - 19 abril", imageFileName: "horoscope_aries"),
        Horoscope(id: "tauro", name: "Tauro", dates: "20 abril - 20 mayo", imageFileName: "horoscope_tauro"),
        Horoscope(id: "geminis", name: "Géminis", dates : "21 mayo - 20 junio", imageFileName: "horoscope_geminis"),
        Horoscope(id: "cancer", name: "Cáncer", dates: "21 junio - 22 julio", imageFileName: "horoscope_cancer"),
        Horoscope(id: "leo", name: "Leo", dates: "23 julio - 22 agosto", imageFileName: "horoscope_leo"),
        Horoscope(id: "virgo", name: "Virgo", dates: "23 agosto - 22 septiembre", imageFileName: "horoscope_virgo"),
        Horoscope (id: "libra", name: "Libra", dates: "23 septiembre - 22 octubre", imageFileName: "horoscope_libra"),
        Horoscope(id: "escorpio", name: "Escorpio", dates: "23 octubre - 21 noviembre", imageFileName: "horoscope_escorpio"),
        Horoscope(id: "sagitario", name: "Sagitario", dates: "22 noviembre - 21 diciembre", imageFileName: "horoscope_sagitario"),
        Horoscope(id: "capricornio", name: "Capricornio", dates: "22 diciembre - 19 enero", imageFileName: "horoscope_capricornio"),
        Horoscope(id: "acuario", name: "Acuario", dates: "20 enero - 18 febrero", imageFileName: "horoscope_acuario"),
        Horoscope(id: "piscis", name: "Piscis", dates: "19 febrero - 20 marzo", imageFileName: "horoscope_piscis")]
    
}
