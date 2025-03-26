//
//  UtentePiva.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import Foundation

class UtentePiva:UtenteSenzaPiva{
    
    private var piva:String
    
    
    init(tel: String, email: String, pw: String, nome: String, cognome: String, piva: String) {
        self.piva = piva
        super.init(tel: tel, email: email, pw: pw, nome: nome, cognome: cognome)
    }
    
    override func getPiva() -> String{
        return piva
    }
    
    override func visualizzaFatture()-> Bool
    {
        return true
    }
    
    
    
}
