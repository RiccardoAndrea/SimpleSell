//
//  HomeView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 31/01/23.
//

import SwiftUI

struct HomeView: View
{
    
    
    var body: some View
    {
          VStack
           {
             TabView
               {
                   /*HStack
                    {*/
                   SezionePrincipale()
                       .tabItem{
                           Image(systemName:"house")
                           Text("Home")
                       }
                   AnnunciView()
                       .tabItem{
                           Image(systemName: "plus.app")
                           Text("Annunci")
                       }
                   NoticheView()
                       .tabItem{
                           Image(systemName: "bell")
                           Text("Notifiche")
                       }
                   ProfiloView()
                       .tabItem{
                           Image(systemName: "person")
                           Text("profilo")
                    }
               }
            }
        }
    }
   

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
