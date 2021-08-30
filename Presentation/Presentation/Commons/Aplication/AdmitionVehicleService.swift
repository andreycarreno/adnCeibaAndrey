//
//  VehicleService.swift
//  Presentation
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 27/08/21.
//

import Foundation
import Domain
import DataAccessLocal

class AdmitionVehicleService {
    
    private var vehiclePresentationTranslator: VehiclePresentationTranslator
    
    init() {
        
        vehiclePresentationTranslator = VehiclePresentationTranslator()
        
    }
    
    func saveVehicle(vehicleEntity: VehicleEntity) throws{
        
        let vehicleRepository = VehicleRepositoryRealm()
        var vehicle: Vehicle
        
        do {
            
            vehicle = try vehiclePresentationTranslator.fromPresentationEntityToDomainModel(vehicleEntity: vehicleEntity)
            
        } catch  {
            throw error
        }
        
        do {
            
            if vehicleEntity.typeVehicle == "Moto"{
                
                try VehicleService(vehicleRepository: vehicleRepository).saveVehicle(vehicle: vehicle, admintionVehicle: MotorcycleService(repositoryVehicle: vehicleRepository))
                
            }else{
                
                try VehicleService(vehicleRepository: vehicleRepository).saveVehicle(vehicle: vehicle, admintionVehicle: MotorcycleService(repositoryVehicle: vehicleRepository))
                
        
            }
             
        } catch {
            
            throw error
        }
    }
    
}
