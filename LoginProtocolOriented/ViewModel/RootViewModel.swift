//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Fatih Filizol on 18.11.2022.
//

import Foundation




class RootViewModel {
    
    private let loginstorageService : LoginStorageService
    
    weak var output : RootViewModelOutput?
    
    init(loginstorageService: LoginStorageService) {
        self.loginstorageService = loginstorageService
    }
    
    func checkLogin () {
        if let accessToken = loginstorageService.getUserAccessToken(), !accessToken.isEmpty {
            output?.showMainApp()
        }else{
            output?.showLogin()
        }
    }
}
