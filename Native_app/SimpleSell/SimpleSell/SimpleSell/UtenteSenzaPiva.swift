//
//  UtenteSenzaPiva.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

/*
class Classe{
    private var text : String
    
    //ridefinisco il costruttore
    init(testo:String){
        self.text=testo;
    }
    
    func getTesto() -> String{
        return self.text
    }
    
    func setText(testo:String){
        self.text = testo;
    }
    
   
}

//per l'eredità si usa:
class ClasseNuova:Classe{
    private var numero:Int
    
    //nuovo costruttore dellaa classe figlia
    init(testo:String,numero: Int) {
        self.numero = numero
        super.init(testo: testo)
    }
    
    override func getTesto() -> String {
        print("ora faccio prima questo")
        return super.getTesto()
    }
}


/*usiamo init quando vogliamo dare valori di default, costruttore di defaul*/
var obj : Classe = Classe.init(testo:"ciao");
obj.getTesto();
obj.setText(testo: "nuovo")
*/
import Foundation

class UtenteSenzaPiva{
    
    private let tel: String
    private let email: String
    private let pw:String
    private let nome:String
    private let cognome:String
    
    
    init(tel: String, email: String, pw: String, nome: String, cognome: String) {
        self.tel = tel
        self.email = email
        self.pw = pw
        self.nome = nome
        self.cognome = cognome
    }

    func getTel()->String{
        return tel
    }
    
    func getEmail()->String{
        return email
    }
    
    func getPw()->String{
        return pw
    }
    
    func getNome()->String{
        return nome
    }
    
    func getCognome()->String{
        return cognome
    }
    
    func getPiva()->String{
        return ""
    }
    
    //dovrebbe essere generic
    func login(utente:UtenteSenzaPiva){
        let singleton = Singleton.shared
        singleton.utente = utente
    }
    
    func inserisciAnnuncio(){
        
    }
    
    func eliminazioneAnnuncio(){
        
    }
    /*scarica una fattura dal fylesystem*/
    func scaricaFattura(){
        
    }
    //permette di spostarci nella sezione portafoglio
    func visualizzaPortafoglio(){
        
    }
    
    //va fatto over ride in utente piva, se ha fattura sarà true
    func visualizzaFatture()-> Bool{
        return false
    }
    
    func modificaProfilo(){
        
    }
}
