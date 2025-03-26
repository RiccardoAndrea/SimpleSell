//
//  AnnunciView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import SwiftUI

struct AnnunciView: View
{
    @State var toggleValue1: Bool = false
    @State var toggleValue2: Bool = false
    @State var toggleValue3: Bool = false
    @State private var showText = false
    @State private var titolo:String = ""
    @State private var descrizione:String = ""
    @State private var categoria:String = ""
    @State private var marca:String = ""
    @State private var condizioni:String = ""
    @State private var prezzo:String = ""
   
    
    var body: some View
    {
        VStack
        {
            Image(systemName:"plus.app")
                .resizable().aspectRatio(contentMode:.fit)
                .frame(width: 120.0)
            Text("Carica Foto")
                .font(.custom("Helvetica", size: 20))
                .padding()
            
            TextField("Titolo*",text: $titolo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            TextField("Descrizione*",text: $descrizione)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            TextField("Categoria*",text: $categoria)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            TextField("Marca*",text: $marca)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            TextField("Condizioni*",text: $condizioni)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            TextField("Prezzo*",text: $prezzo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size:25))
                .padding(5)
            
            VStack
            {
                HStack
                {
                    
                    Toggle(isOn: $toggleValue1) {
                        Text("    Ebay")
                    }.padding(2)
                    Toggle(isOn: $toggleValue2) {
                        Text("Facebook")
                    }.padding(-3)
                    Toggle(isOn: $toggleValue3) {
                        Text("Amazon")
                    }.padding(2)
                    
                    
                }
                if showText==true
                {
                    
                    Text("Inserisci i campi obbligatori").foregroundColor(.red)
                }
            }
           
            Button("Carica", action: carica)
             .font(.custom("Helvetica", size: 22))
             .foregroundColor(.black)
             .padding(EdgeInsets(top:6,leading: 14, bottom: 6, trailing: 14))
              .border(Color.black, width: 1)
                
            
            
        }
        
    }
    
   
    
    func carica()
    {
        showText=false
        if(titolo.isEmpty)
        {
            showText = true
            return
        }
        if(descrizione.isEmpty)
        {
            showText = true
            return
        }
        
        if(categoria.isEmpty)
        {
            showText = true
            return
        }
        if(marca.isEmpty)
        {
            showText = true
            return
        }
        if(condizioni.isEmpty)
        {
            showText = true
            return
        }
                    
        if(prezzo.isEmpty)
        {
          showText = true
          return
        }
        titolo = ""
        descrizione = ""
        categoria = ""
        marca = ""
        condizioni = ""
        prezzo = ""
        
        
       
        
    }

               
    
    
    struct AnnunciView_Previews: PreviewProvider {
        static var previews: some View {
            AnnunciView()
        }
    }
    
}
