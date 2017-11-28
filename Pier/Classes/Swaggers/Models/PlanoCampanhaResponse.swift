//
// PlanoCampanhaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da resposta do recurso de plano de campanha */
public class PlanoCampanhaResponse: JSONEncodable {

    /** Identificador do plano de campanha */
    public var id: Int?
    /** Quantidade de parcelas */
    public var parcelas: Int?
    /** Taxa de juros */
    public var taxa: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["parcelas"] = self.parcelas
        nillableDictionary["taxa"] = self.taxa
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
