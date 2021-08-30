//
//  MotorcycleTest.swift
//  DomainTests
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 27/08/21.
//

import Foundation
import XCTest
import Domain

class MotorcycleServiceTest: XCTestCase {
    
    
    func test_calculatePrice_calculaSuccess_int(){
        //Arrange
        let motorcycleService = MotorcycleService(repositoryVehicle: MockRepositoryVehicle())
        let expected = 2000
        
        let vehicle = try! Vehicle(licencePlate: "sfd123", admitionDate: Date(), typeVehicle: "car", cylinderCapacity: 650)
        
        var result: Int
        
        //Act
        result = motorcycleService.calculateTotal(vehicle: vehicle)
        
        //Assert
        XCTAssert((result == expected))
        
    }
    
    func test_calculateItervalBetwenAdmisionDateToFinalizationDate_calculateItervalBetwenAdmisionDateToFinalizationDateSuccess_int(){
        //Arrange
        let carservice = CarService(repositoryVehicle: MockRepositoryVehicle())
        let expected = 0
        
        var result: DateComponents
        
        //Act
        result = carservice.calculateItervalBetwenAdmisionDateToFinalizationDate(date: Date())
        
        //Assert
        XCTAssert((result.hour == expected))
        
    }
    
    
}

