//
//  FactoryUtente.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import Foundation

class FactoryUtente
{
    
    //factory utente senza piva
    static func creaUtente(tel: String, email: String, pw: String, nome: String, cognome: String)-> UtenteSenzaPiva{
        var utente : UtenteSenzaPiva
        utente = UtenteSenzaPiva(tel:tel,email:email,pw:pw,nome:nome,cognome:cognome)
        return utente
    }
    
    //factory utente con piva
    static func creaUtente(tel: String, email: String, pw: String, nome: String, cognome: String, piva:String)-> UtenteSenzaPiva{
        var utente : UtenteSenzaPiva
        utente = UtentePiva(tel:tel,email:email,pw:pw,nome:nome,cognome:cognome,piva: piva)
        return utente
    }
}
