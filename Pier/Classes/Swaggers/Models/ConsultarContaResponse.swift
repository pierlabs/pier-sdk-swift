//
// ConsultarContaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConsultarContaResponse: JSONEncodable {

    public var codRetorno: Int?
    public var codigoRetorno: Int?
    public var contas: [ContaCartaoResponse]?
    public var descricaoRetorno: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codRetorno"] = self.codRetorno
        nillableDictionary["codigoRetorno"] = self.codigoRetorno
        nillableDictionary["contas"] = self.contas?.encodeToJSON()
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}