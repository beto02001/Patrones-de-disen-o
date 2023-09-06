//
//  Nota Factory Method.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 05/09/23.
//


/*
 
 Permite a la subclase decidir qué tipo de instancia concreta necesita.
 Se utiliza para resolver el problema de cuando necesitamos crear una instancia de un objeto que no sabemos qué tipo va a ser

 
 Ejemplo:
  Una app para seleccionar el método de pago (crédito, débito, paypal, googlepay, etc)

 Product: viene siendo un protocolo

     1. Se crea primero el protocolo (Product) llamado en este caso Payment
     2. Se crean las clases que tendrán el protocolo creado (ConcreteProduct) que se llaman card y google payment
     3. Creamos la clase (PaymentFactory) que será la de Creator y es el encargado de elegir qué clase se va a crear con el metodo que regresa una clase implementada con el protocolo factory


 Ventajas
 Si queremos crear un nuevo método de ejemplo, en ese caso simplemente se añade una nueva clase (ConcreteProduct) que hereda el protocolo Payment (Product) y añadirlo a concreteCreator

 */
