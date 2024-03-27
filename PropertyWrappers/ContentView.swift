//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Zaafir on 27/3/24.
//

import SwiftUI

class MiClase : ObservableObject{
    @Published var nombre = "Pepe"
    @Published var edad = 47
}

struct ContentView: View {
    @State private var valor = 0
    @State private var selection:Int?
    @StateObject private var miObjeto = MiClase()
    
    
    var body: some View {
        NavigationView{
        VStack {
            
        Text("El valor es: \(valor)")
            Button("Suma 1"){
                valor += 1
            }
            Text("Mi nombre es \(miObjeto.nombre) y mi edad es \(miObjeto.edad)")
            
            Button("Modificar objeto"){
                miObjeto.nombre = "Zaafir"
                miObjeto.edad += 1
            }
            
            NavigationLink(destination: Bindingvista(valor: $valor, miObjeto:miObjeto), tag: 1, selection: $selection){
                Button("Ir a otra vista"){
                        selection = 1
                    }
                }
            }
        }.navigationTitle("ContectView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
