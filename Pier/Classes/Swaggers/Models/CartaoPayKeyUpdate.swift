//
// CartaoPayKeyUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso de atualiza\u00C3\u00A7\u00C3\u00A3o de chave */
public class CartaoPayKeyUpdate: JSONEncodable {

    /** Chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o criptografada */
    public var chaveCriptograma: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["chaveCriptograma"] = self.chaveCriptograma
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
