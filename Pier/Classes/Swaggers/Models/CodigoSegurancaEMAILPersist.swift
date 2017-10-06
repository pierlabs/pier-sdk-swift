//
// CodigoSegurancaEMAILPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso validar c\u00C3\u00B3digo de seguran\u00C3\u00A7a. */
public class CodigoSegurancaEMAILPersist: JSONEncodable {

    /** E-mail usado para envio do c\u00C3\u00B3digo de seguran\u00C3\u00A7a. */
    public var email: String?
    /** Token para valida\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoSeguranca: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["email"] = self.email
        nillableDictionary["codigoSeguranca"] = self.codigoSeguranca
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}