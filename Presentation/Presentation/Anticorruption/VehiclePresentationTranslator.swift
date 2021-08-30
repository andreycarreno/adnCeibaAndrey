//
//  VehiclaPresentationTranslator.swift
//  Presentation
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 28/08/21.
//

import Foundation

func fromDatabaseEntityToDomainModel(vehicleEntity: VehicleEntity) -> Vehicle{
    
    let vehicle: Vehicle = try! Vehicle(
        licencePlate: "",
        admitionDate: Date(),
        typeVehicle: "",
        cylinderCapacity: 0
    )
    
    vehicle.setTypeVehicle(typeVehicle: vehicleEntity.licencePlate)
    vehicle.setLicencePlate(licencePlate: vehicleEntity.licencePlate)
    vehicle.setAdmitionDate(admitionDate: vehicleEntity.admitionDate)
    vehicle.setTypeVehicle(typeVehicle: vehicleEntity.licencePlate)
    vehicle.setCylinderCapacity(cylinderCapacity: vehicleEntity.cylinderCapacity)
    
    return vehicle
    
}

func fromDomainModelToDatabaseEntity(vehicle: Vehicle) -> VehicleEntity{
    
    let vehicleEntity: VehicleEntity = VehicleEntity()
    
    vehicleEntity.licencePlate = vehicle.getLicencePlate()
    vehicleEntity.admitionDate = vehicle.getAdmitionDate()
    vehicleEntity.typeVehicle = vehicle.getTypeVehicle()
    vehicleEntity.cylinderCapacity = vehicle.getCylinderCapacity() ?? 0
    
    return vehicleEntity
    
}
