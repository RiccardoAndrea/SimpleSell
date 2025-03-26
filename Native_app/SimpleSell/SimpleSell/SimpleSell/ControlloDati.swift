//
//  ControlloDati.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import Foundation

class ControlloDati{
    private let email: String
    private let pw: String
    
    init(email: String, pw: String) {
        self.email = email
        self.pw = pw
    }
    
    func ControlloLogin() -> Bool{
        if(self.email=="Utente") && (self.pw=="prova"){
            return true
        }
        return false
        
    }
    
    func getEmail()-> String{
        return self.email
    }
    
    func getPw() -> String{
        return self.pw
        
    }
}
