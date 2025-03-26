//
//  Annuncio.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import Foundation

class Annuncio{
    private var titolo:String
    private var descrizione:String
    private var categoria:String
    private var marca:String
    private var prezzo:Float
    
    
    init(titolo: String, descrizione: String, categoria: String, marca: String, prezzo: Float) {
        self.titolo = titolo
        self.descrizione = descrizione
        self.categoria = categoria
        self.marca = marca
        self.prezzo = prezzo
    }
    
    /*questa funzione permette la modifica di un annuncio già esistente*/
    func modifica(){
        
    }
}
