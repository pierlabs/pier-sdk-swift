//
// StatusImpressao.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso Status Impress\u00C3\u00A3o */
public class StatusImpressao: JSONEncodable {

    /** Id do est\u00C3\u00A1gio cart\u00C3\u00A3o */
    public var id: Int?
    /** Nome do status impress\u00C3\u00A3o */
    public var nome: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
