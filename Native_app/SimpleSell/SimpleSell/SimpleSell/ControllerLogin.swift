//
//  ControllerLogin.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import Foundation

func cambioScena(){
    print(email)
}

func controlloLogin(){
    let controllo = ControlloDati(email: email, pw: pw)
    if(controllo.ControlloLogin()){
        let utente = UtentePiva(tel: "380364666", email: controllo.getEmail(), pw: controllo.getPw(), nome: "Utente", cognome: "Prova", piva: "0000")
        utente.login(utente:utente)
        
        
    }
    else
    {
        self.showText=true
    }
}
