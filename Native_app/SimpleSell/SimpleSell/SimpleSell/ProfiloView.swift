//
//  ProfiloView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import SwiftUI

struct ProfiloView: View {
    @State private var showError = false
    @State private var fatture = false
    
    var body: some View {
        
        
        VStack
        {
            Image("foto")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 90.0)
                .padding()
            
            HStack {
                Text("Nome:")
                .font(.headline)
                .foregroundColor(.gray)
                if let nome = Singleton.shared.utente?.getNome()
                {
                  Text("\(nome)")
                  .font(.headline)
                }
                else
                {
                  Text("Non disponibile")
                  .font(.headline)
                  .foregroundColor(.red)
                
                }
            }
            HStack {
                Text("Cognome:")
                .font(.headline)
                .foregroundColor(.gray)
                if let cognome = Singleton.shared.utente?.getCognome()
                {
                  Text("\(cognome)")
                  .font(.headline)
                  .padding(5)
                }
                else
                {
                  Text("Non disponibile")
                  .font(.headline)
                  .foregroundColor(.red)
                  .padding(5)
                }
            }
            HStack {
                Text("Email:")
                .font(.headline)
                .foregroundColor(.gray)
                if let email = Singleton.shared.utente?.getEmail()
                {
                  Text("\(email)")
                  .font(.headline)
                }
                else
                {
                  Text("Non disponibile")
                  .font(.headline)
                  .foregroundColor(.red)
                  .alignmentGuide(.leading) { _ in 0 }
                    
                }
            }
            HStack {
                Text("Telefono:")
                .font(.headline)
                .foregroundColor(.gray)
                if let telefono = Singleton.shared.utente?.getTel()
                {
                  Text("\(telefono)")
                  .font(.headline)
                  .padding(5)
                }
                else
                {
                  Text("Non disponibile")
                  .font(.headline)
                  .foregroundColor(.red)
                  .padding(5)
                }
            }
            HStack {
                Text("Partita Iva:")
                .font(.headline)
                .foregroundColor(.gray)
                if let piva = Singleton.shared.utente?.getPiva()
                {
                  Text("\(piva)")
                  .font(.headline)
                }
                else
                {
                  Text("Non disponibile")
                  .font(.headline)
                  .foregroundColor(.red)
                  .alignmentGuide(.leading) { _ in 0 }
                    
                }
            }
            
            Button(action: {
            // codice di azione del tasto
            }) {
                Image(systemName:"trapezoid.and.line.horizontal.fill")
                    .resizable()
                    .frame(width: 30, height: 15)
                Text("Portafoglio")
            }.padding(30)
            
            Button(action: {spostaInFattura()
            }) {
                Image(systemName:"menucard.fill")
                    .resizable()
                    .frame(width: 22, height: 25)
                Text("Scarica Fattura")
            }
            .padding(-10)
            .alert(isPresented: $showError) {
                Alert(title: Text(""), message: Text("Non hai fatture da mostrare"), dismissButton: .default(Text("OK")))
            }
            NavigationLink(destination: RegistrazioneView(), isActive: $fatture){}
        }

    }
    
    func spostaInFattura(){
        if(Singleton.shared.utente?.visualizzaFatture()==true)
        {
            showError=true
            //fatture=true
        }
        else{
            showError=true
        }
    }
    
}

struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
