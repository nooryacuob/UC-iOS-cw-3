//
//  ContentView.swift
//  cw3 p2
//
//  Created by Nour Alhashash on 10/09/2022.
//

import SwiftUI

struct ContentView: View {

    @State var cirnum1 = 0
    @State var cirnum2 = 0
    @State var cirnum3 = 0
    
    var body: some View {
       
        VStack {
           
            purcir(name: "استغفرالله العظيم", num1: $cirnum1)
            purcir(name: " سبحان الله وبحمده", num1: $cirnum2)
            purcir(name: " سبحان الله العظيم", num1: $cirnum3)
        }
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct purcir: View {
    var name : String
    @Binding var num1 : Int
    var body: some View {
        VStack{
            HStack{
                Text(name)
                    .bold()
                ZStack{
                Circle()
                    .foregroundColor(.purple)
                    .frame(width: 150, height: 150)
                
                Text("\(num1)")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    .onTapGesture {
                    num1 = num1 + 1
                    }
                }
                
                
            }
            
            
            
        }
    }
}
