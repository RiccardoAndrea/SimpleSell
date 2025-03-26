//
//  RegistrazioneView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import SwiftUI

struct RegistrazioneView: View {
    
    @State private var Login = false
    @State private var showText = false
    @State private var showErrore = false
    
    @State private var piva:String = ""
    @State private var nome:String = ""
    @State private var cognome:String = ""
    @State private var numero:String = ""
    @State private var email:String = ""
    @State private var pw:String=""
    
    var body: some View
    {
        NavigationView
        {
            VStack{
                Image("logo")
                VStack{
                    TextField("Nome*",text: $nome)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    TextField("Cognome*",text: $cognome)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    TextField("Email*",text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    SecureField("Password*",text: $pw)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    TextField("Numero Telefonico*",text: $numero)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    TextField("Partita Iva",text: $piva)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size:25))
                        .padding()
                    if showText {
                        
                        Text("Registrato con successo!").foregroundColor(.green)
                    }
                    if showErrore{
                        Text("Inserisci campi obbligatori").foregroundColor(.red)
                    }
                    Button("Registrati", action: mandaDati)
                        .font(.custom("Helvetica", size: 22))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top:8,leading: 16, bottom: 8, trailing: 16))
                        .border(Color.black, width: 1)
                        .padding()
                        NavigationLink(destination: ContentView(), isActive: $Login){}
                }
            }
        }
    }
    
    
    func mandaDati(){
        
        var myArray: [String?] = [nome, cognome, email, pw, numero,piva]
        for item in myArray.dropLast(){
            if(item==nil || item=="")
            {
                self.showErrore=true
                self.showText=false
            }
            else
            {
                if(pw.count>3)
                {
                    
                    if(myArray[5]=="" || myArray[5]==nil)
                    {
                        let utente = FactoryUtente.creaUtente(tel: numero, email: email, pw: pw, nome: nome, cognome: cognome)
                        //registra l'utente nel fylesistem
                        
                        self.showText=true
                    }
                    else
                    {
                        let utente = FactoryUtente.creaUtente(tel: numero, email: email, pw: pw, nome: nome, cognome: cognome,piva: piva)
                        //registra l'utente nel fylesistem
                        self.showText=true
                    }
                    self.showErrore=false
                }
                else{
                    self.showErrore=true
                    self.showText=false
                    }
                
            }
            
        }
    }
    
}


struct RegistrazioneView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrazioneView()
    }
}
