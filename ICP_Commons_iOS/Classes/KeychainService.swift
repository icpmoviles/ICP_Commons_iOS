//
//  KeychainService.swift
//  ICP_Commons_iOS
//
//  Created by felipecambas on 28/3/22.
//

import Foundation
import Security


class KeyChainManager {
    
    static let grupo : String = "8AU6VN5BL2.es.icp.internal"
    
    enum KeyChainError : Error {
        case duplicateEntry
        case unknown (OSStatus)
    }
    
    static func save(service : String, account : String, password : Data) throws {
        
            let query : [String : AnyObject] = [
                kSecClass as String: kSecClassGenericPassword,
                kSecAttrService as String : service as AnyObject,
                kSecAttrAccount as String : account as AnyObject,
                kSecValueData as String : password as AnyObject,
                kSecAttrAccessGroup as String : grupo as AnyObject
            ]
            
            let status = SecItemAdd(query as CFDictionary, nil)
            
            guard status != errSecDuplicateItem else {
                throw KeyChainError.duplicateEntry
            }
            
            guard status == errSecSuccess else {
                throw KeyChainError.unknown(status)
            }
            
            print("Element saved")
        
    }
    
    static func get(service : String, account : String) throws -> Data? {
        
        let query : [String : AnyObject] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String : service as AnyObject,
            kSecAttrAccount as String : account as AnyObject,
            kSecReturnData as String : kCFBooleanTrue,
            kSecMatchLimit as String : kSecMatchLimitOne,
            kSecAttrAccessGroup as String : grupo as AnyObject
        ]
        
        var result : AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        
        
        return result as? Data
    }
    
    static func delete(service : String, account : String) throws {
        let query : [String : AnyObject] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String : service as AnyObject,
            kSecAttrAccount as String : account as AnyObject,
            kSecAttrAccessGroup as String : grupo as AnyObject
        ]
        
        SecItemDelete(query as CFDictionary)
        print("Borrado de datos correcto....")
    }
}

