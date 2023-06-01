//
//  LivroTeste.swift
//  BooksCopy
//
//  Created by Luis Silva on 31/05/23.
//

import SwiftUI


struct LivroTeste: View {
    @State private var showSheet = false
    
    @State private var x: Int = 7
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var mode: Bool = false
    
    var body: some View {
        ScrollView {
            Text("\(x)")
            Text("""
Os carros são uma das invenções mais significativas da história moderna. Eles revolucionaram a forma como nos deslocamos, proporcionando mobilidade pessoal, conveniência e liberdade. Desde o surgimento dos primeiros veículos motorizados até os avanços tecnológicos mais recentes, os carros têm desempenhado um papel fundamental na nossa sociedade.

Os carros oferecem uma maneira rápida e eficiente de viajar de um lugar para outro. Eles encurtam distâncias e nos permitem explorar novos horizontes. Com um carro, podemos viajar com facilidade para o trabalho, visitar amigos e familiares, fazer compras e realizar uma infinidade de atividades diárias. Além disso, eles são especialmente úteis para viagens mais longas, permitindo-nos explorar diferentes regiões e desfrutar de paisagens deslumbrantes ao longo do caminho.
""").font(.system(size: CGFloat(x)*2))
            
            
              
            
            
            
            Button("Modal") {
                showSheet.toggle()
            }.font(.largeTitle)
                .sheet(isPresented: $showSheet) {
                    Themes_Settings(x: $x, mode: $mode).presentationDetents([.height(360)])
            }
            
            
           

            
        }.preferredColorScheme(mode ? .dark : .light)
    }
    
}


struct LivroTeste_Previews: PreviewProvider {
    static var previews: some View {
        LivroTeste()
    }
}
