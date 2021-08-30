//
//  FinalizeVehicleService.swift
//  Presentation
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 29/08/21.
//

import Foundation
import Domain
import DataAccessLocal

class FinalizeVehicleService {
    
    private var vehiclePresentationTranslator: VehiclePresentationTranslator
    
    init() {
        
        vehiclePresentationTranslator = VehiclePresentationTranslator()
        
    }
    
    func getVehicles() -> [VehicleEntity] {
        
        return VehicleRepositoryRealm().getVehicles().map({
                                                            vehiclePresentationTranslator.fromDomainToPresentationEntity(vehicle: $0)
            
        })
        
    }
    
}
