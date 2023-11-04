//
//  ModelComportamiento.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 03/11/23.
//

import Foundation

struct Comportamiento {
    
    var patrones: [PatronesComportamiento]
    
    init() {
        self.patrones = patronesComportamiento
    }
}


struct PatronesComportamiento {
    
    var nombre: String
    var tipo: TipoPatron
    var caseName: AllPatterType
    
    init(nombre: String, info: TipoPatron, caseName: AllPatterType) {
        self.nombre = nombre
        self.tipo = info
        self.caseName = caseName
    }
}


let patronesComportamiento = [
    PatronesComportamiento(nombre: "Chain of Responsability", info: .comportamiento, caseName: .ChainOfResponsability),
    PatronesComportamiento(nombre: AllPatterType.Command.rawValue, info: .comportamiento, caseName: .Command ),
    PatronesComportamiento(nombre: AllPatterType.Interpreter.rawValue, info: .comportamiento, caseName: .Interpreter),
    PatronesComportamiento(nombre: AllPatterType.Iteractor.rawValue, info: .comportamiento, caseName: .Iteractor),
    PatronesComportamiento(nombre: AllPatterType.Mediator.rawValue, info: .comportamiento, caseName: .Mediator),
    PatronesComportamiento(nombre: AllPatterType.Memento.rawValue, info: .comportamiento, caseName: .Memento),
    PatronesComportamiento(nombre: AllPatterType.Observer.rawValue, info: .comportamiento, caseName: .Observer),
    PatronesComportamiento(nombre: AllPatterType.State.rawValue, info: .comportamiento, caseName: .State),
    PatronesComportamiento(nombre: AllPatterType.Strategy.rawValue, info: .comportamiento, caseName: .Strategy),
    PatronesComportamiento(nombre: AllPatterType.TemplateMethod.rawValue, info: .comportamiento, caseName: .TemplateMethod),
    PatronesComportamiento(nombre: AllPatterType.Visitor.rawValue, info: .comportamiento, caseName: .Visitor),
]
