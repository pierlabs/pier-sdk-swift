//
// ConsultarCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConsultarCartaoResponse: JSONEncodable {

    public var cartoes: [CartaoResponse]?
    public var codigoRetorno: Int?
    public var descricaoRetorno: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cartoes"] = self.cartoes?.encodeToJSON()
        nillableDictionary["codigoRetorno"] = self.codigoRetorno
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}