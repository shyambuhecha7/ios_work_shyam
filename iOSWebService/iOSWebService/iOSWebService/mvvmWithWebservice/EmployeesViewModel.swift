//
//  EmployeesViewModel.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 07/07/23.
//

import Foundation

class EmployeesViewModel: NSObject {
    private var apiService : APIServices!
    private(set) var empData : EmployeeModel! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
           super.init()
           self.apiService = APIServices()
           callFuncToGetEmpData()
       }
       
       func callFuncToGetEmpData() {
           self.apiService.apiToGetEmployeeData { (empData) in
               self.empData = empData
           }
       }
}
