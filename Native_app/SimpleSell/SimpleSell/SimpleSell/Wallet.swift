//
//  Wallet.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import Foundation

/*il wallet identifica una singola transazione*/
class Wallet{
    
    private var guadagno:Float
    
    
    
    init(guadagno: Float) {
        self.guadagno = guadagno
    }
    
    func getTotale() -> Float {
        return guadagno
    }
    
    func setTotale(guadagno:Float){
        self.guadagno=guadagno
    }
    
    func recuperoTransazione(){
        /*recupera tutte le transazioni effettuate*/
    }
    
    func inserisciTransazione(){
        /*inserisce nel filesystem il guadagno della singola transazione
         e aggiorna quindi il totale duadagnato*/
    }
}
