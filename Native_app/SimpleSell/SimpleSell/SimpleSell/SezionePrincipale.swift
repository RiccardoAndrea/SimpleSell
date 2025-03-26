//
//  SezionePrincipale.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import SwiftUI

struct SezionePrincipale: View {
    @State private var showModal = false
    @State var array = ["Macbook","Tavolo","Tv","Nintendo"]
    @State private var ricerca:String = ""
    @State var mac = false
    @State var tavolo = false
    @State var tv = false
    @State var nintendo = false
    @State var size = 0
   
    let bottone  = UIButton(type: .system)
    let heights = stride(from: 0.2, through: 0.2, by: 0.1).map {
        PresentationDetent.fraction($0) }
    
    
    var body: some View
    {
        
        VStack
        {
            HStack
            {
                TextField("Ricerca",text: $ricerca)
                    .padding(.leading, 23.0)
                    .frame(width: 300.0, height: 50.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title2)
                
                Image("ricerca").renderingMode(.none).resizable().aspectRatio(contentMode: .fit)
                    .padding(.trailing, 13.0)
                    .frame(width: 45.0)
            }
            
            HStack
            {
                VStack
                {
                    Image(array[0]).renderingMode(.none).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 170.0)
                    HStack
                    {
                        Text(array[0]).fontWeight(.bold)
                        if(!array[0].isEmpty){
                            Button(action:
                                    opzioni0) {
                                Image(systemName: "ellipsis").padding(2)
                            }.tag(0)
                                .sheet(isPresented: $showModal) {
                                    VStack
                                    {
                                        Button(action: elimina){
                                            HStack {
                                                Image(systemName: "xmark.bin.circle")
                                                //.foregroundColor(.yellow)
                                                Text("Elimina")
                                            }
                                        }
                                        Button(action: nulla) {
                                            HStack {
                                                Image(systemName: "pencil")
                                                //.foregroundColor(.yellow)
                                                Text("Modifica")
                                            }
                                        }.padding(4)
                                        
                                        Button(action: nulla) {
                                            HStack {
                                                Image(systemName: "signpost.and.arrowtriangle.up")
                                                //.foregroundColor(.yellow)
                                                Text("Piattaforme")
                                            }
                                        }
                                        
                                    }.presentationDetents(Set(heights))
                                    
                                }
                            
                        }
                    }.padding(.bottom,-10)
                    
                }
                VStack
                {
                    Image(array[1]).renderingMode(.none).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 170.0)
                    
                    HStack
                    {
                        
                            
                            Text(array[1]).fontWeight(.bold)
                            if(!array[1].isEmpty)
                            {
                                Button(action:
                                        opzioni1) {
                                    Image(systemName: "ellipsis").padding(2)
                                }.tag(1)
                                    .sheet(isPresented: $showModal)
                                {
                                    
                                    
                                }.presentationDetents(Set(heights))
                            }
                    }.padding(.bottom,-10)
                }
            }
            
            HStack
            {
               
                    VStack
                    {
                    Image(array[2]).renderingMode(.none).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 170.0)
                    HStack
                        {
                            Text(array[2]).fontWeight(.bold)
                            if(!array[2].isEmpty)
                            {
                                
                                Button(action:
                                        opzioni2) {
                                Image(systemName: "ellipsis").padding(2)
                            }.tag(2)
                                .sheet(isPresented: $showModal) {
                                }
                            }
                    }.padding(.bottom,-10)
                  }
                
                
                
                VStack
                {
                    Image(array[3]).renderingMode(.none).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 170.0)
                    HStack
                    {
                        
                        Text(array[3]).fontWeight(.bold)
                        if(!array[3].isEmpty)
                        {
                            Button(action:opzioni3) {
                            Image(systemName: "ellipsis")
                                .padding(2)
                        }.tag(3)
                            .sheet(isPresented: $showModal)
                        {
                            
                            
                        }.presentationDetents(Set(heights))
                       }
        
                        }.padding(.bottom,-10)
                }
                
            }
            Spacer()
        }
    }
    
    func nulla(){
        
    }
    
    func opzioni0(){
            mac = true
            showModal=true
            tavolo = false
            tv = false
            nintendo = false
        }

    func opzioni1(){
         tavolo = true
         tv = false
         nintendo = false
         mac = false
         showModal=true
    }
  
func opzioni2(){
         tv = true
         tavolo = false
         nintendo = false
         mac = false
         showModal=true
    }

func opzioni3(){
         tv = false
         tavolo = false
         mac = false
         nintendo = true
         showModal=true
    }

    
    func scambio(posizione:Int){
        if(size > array.count)
        {
            size = 0
        }
            let contatore =  array.count - size - 1
            let temp = array[posizione]
            array[posizione] = array[contatore]
            array[contatore]=temp
            size = size + 1
        
            
    }
    
    func elimina (){
        
        if(mac==true)
        {
            scambio(posizione: 0)
            
        }
        if(tavolo==true)
        {
            scambio(posizione: 1)
            
        }
        if(tv==true)
        {
            scambio(posizione: 2)
          
        }
        if(nintendo==true)
        {
            scambio(posizione: 3)
        }
        array[array.count-size] = ""
        
        

    }

}

struct SezionePrincipale_Previews: PreviewProvider {
    static var previews: some View {
        SezionePrincipale()
    }
}


