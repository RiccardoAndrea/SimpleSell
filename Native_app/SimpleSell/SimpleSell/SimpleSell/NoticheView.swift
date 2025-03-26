//
//  NoticheView.swift
//  SimpleSell
//
//  Created by Alessandro Massadoro on 01/02/23.
//

import SwiftUI

struct NoticheView: View {
    var body: some View {
        VStack{
            HStack {
                Image ("profumo")
                    . resizable ()
                    .aspectRatio(contentMode:.fill)
                    . frame (width: 100, height: 100) .clipped()
                        .clipShape (Circle())
                        .padding(.leading,-110)
                VStack(alignment: .leading)
                {
                    Text ("Ebay")
                        .fontWeight(.bold)
                        .font(.system(size:25))
                    Text ("Profumo da donna")
                        .font(.system(size:20))
                    Text ("Hai venduto l'articolo")
                        .font(.system(size:16))
                }
                
            }
            
            HStack {
                
                Image ("penna")
                    . resizable ()
                    .aspectRatio(contentMode:.fill)
                    . frame (width: 100, height: 100) .clipped()
                        .clipShape (Circle())
                        .padding(.leading,-110)
                VStack(alignment: .leading)
                {
                    Text ("Amazon")
                        .fontWeight(.bold)
                        .font(.system(size:25))
                    Text ("Penna nera")
                        .font(.system(size:20))
                    Text ("Hai venduto l'articolo")
                        .font(.system(size:16))
                }
                
            }
            
            HStack {
                
                Image ("agrumi")
                    . resizable ()
                    .aspectRatio(contentMode:.fill)
                    . frame (width: 100, height: 100) .clipped()
                        .clipShape (Circle())
                        .padding(.leading,-110)
                VStack(alignment: .leading)
                {
                    Text ("Facebook")
                        .fontWeight(.bold)
                        .font(.system(size:25))
                    Text ("Spremiagrumi")
                        .font(.system(size:20))
                    Text ("Hai venduto l'articolo")
                        .font(.system(size:16))
                }
                
            }
            Spacer()
            
        }
    }
}

struct NoticheView_Previews: PreviewProvider {
    static var previews: some View {
        NoticheView()
    }
}
