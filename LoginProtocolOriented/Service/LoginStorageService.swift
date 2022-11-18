//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Fatih Filizol on 18.11.2022.
//

import Foundation

protocol LoginStorageService {
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token:String)
    func getUserAccessToken () -> String?
}
