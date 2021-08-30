//
//  Vehicle.swift
//  Presentation
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 28/08/21.
//

import Foundation

class Vehicle {
    
    private var licencePlate: String
    private var admitionDate: Date
    private var typeVehicle: String
    private var cylinderCapacity: Int?

    public init(licencePlate: String, admitionDate: Date, typeVehicle: String, cylinderCapacity: Int?) throws{
        
        self.licencePlate = licencePlate
        self.admitionDate = admitionDate
        self.typeVehicle = typeVehicle
        self.cylinderCapacity = cylinderCapacity
        
        //try validateLettrByDay(licencePlate: licencePlate, admitionDate: admitionDate)
        
    }
}

