//
//  ContentView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import SwiftUI


//le view ereditano sempre da quella classe
struct ContentView: View {
    
    @State private var email:String = ""
    @State private var pw:String=""
    @State private var showText = false
    @State private var isNavigate = false
    @State private var Home = false

    //va sempre implementato il body che restitiuisce una viewv
    //si definisce nel body l'interfaccia
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                VStack
                {
                    Image("logo")
                    
                    Text("Posta i tuoi annunci da SimpleSell").font(.custom("Helvetica", size: 20)).padding(.top,40)
                    
                }
                .padding(.vertical, 70.0)
                
                HStack
                {
                    Image("amazon")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 55.0)
                    Image("ebay")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 75.0)
                    Image("facebook")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 55.0)
                }
                
                
                
                TextField("Email",text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).font(.system(size:25))
                SecureField("Password",text: $pw).textFieldStyle(RoundedBorderTextFieldStyle()).font(.system(size:25))
                
                VStack
                {
                    if showText {
                        Text("Dati inseriti non validi").foregroundColor(.red)
                    }
                    
                    Button("Accedi     ", action: loginPulsante)
                    
                        .font(.custom("Helvetica", size: 22))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top:8,leading: 16, bottom: 8, trailing: 16))
                        .border(Color.black, width: 1)
                        .padding()
                        NavigationLink(destination: HomeView(), isActive: $Home){}
                    
                    Button("Password dimenticata?", action: cambioScena).padding(10)
                    Text("___Oppure___").padding(10)
                    
                    Button("Registrati", action: registrati)
                        .font(.custom("Helvetica", size: 22))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top:8,leading: 16, bottom: 8, trailing: 16))
                        .border(Color.black, width: 1)
                       NavigationLink(destination: RegistrazioneView(), isActive: $isNavigate){}
                        
                }
                
                Spacer()
                
            }
            .padding()
            
            
        }
        .navigationBarHidden(true)
    }
    
    func cambioScena()
    {
    }
    
    func registrati(){
        //cambia la scena
        isNavigate = true
    }
    
    func loginPulsante()
    {
        let controllo = ControlloDati(email: email, pw: pw)
        if(controllo.ControlloLogin()){
            let utente : UtenteSenzaPiva
            utente = UtentePiva(tel: "380364666", email: controllo.getEmail(), pw: controllo.getPw(), nome: "Utente", cognome: "Prova", piva: "0000")
            utente.login(utente:utente)
            self.showText=false
            //cambia la scena
            Home=true
                
            }
            else
            {
                //mostra l'errore
                self.showText=true
            }
        }
    }


        //è il render in live del codice
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

