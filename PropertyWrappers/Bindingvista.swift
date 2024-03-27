//
//  Bindingvista.swift
//  PropertyWrappers
//
//  Created by Zaafir on 27/3/24.
//

import SwiftUI

struct Bindingvista: View {
    @Binding var valor : Int
    @ObservedObject var miObjeto : MiClase
    
    var body: some View {
        VStack {
        Text("El valor es: \(valor)")
            Button("Suma 2"){
                valor += 2
            }
            Text("Me llamo \(miObjeto.nombre) y tengo \(miObjeto.edad)")
            Button("Actualiza objeto 2"){
                miObjeto.edad += 2
            }
        }
    }
}

struct Bindingvista_Previews: PreviewProvider {
    static var previews: some View {
        Bindingvista(valor: .constant(5), miObjeto: MiClase())
    }
}
