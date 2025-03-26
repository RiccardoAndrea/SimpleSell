//
//  Notifica.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import Foundation

class Notifica{
    private let piattaforma:String
    //ci server per capire il tipo notifica
    private let id:String
    private let titolo:String
    private let tipo:Bool
    //private var immagine:Bolob se vogliamo far vedere anche l'immagine
    
    init(piattaforma: String, id: String, titolo: String, tipo:Bool) {
        self.piattaforma = piattaforma
        self.id = id
        self.titolo = titolo
        self.tipo = tipo
    }
    
    /*manda notifica se riceve un api di vendita di un prodotto
     richiamerà la funzione di fattura che inserisce la fattua delle vendita, inoltre
     aggiungerà un nuovo oggetto wallet con il contenuto del guadagno aggiornerà anche il Totale guadagnato nel fylesistem
     se riceve altri tipi di notifiche notifica solo l'utente
     */
    func riceviNotifica(){
        
        //manda una notifica all'utente con il titolo della notifica e l
        
        if(tipo==true)
        {
            var fattura:Fattura=Fattura()
            fattura.inserisciFattura()
            var wallet:Wallet=Wallet(guadagno: 10)
            wallet.inserisciTransazione()
        }
            
    }
    
    
        
        
        
        
}
