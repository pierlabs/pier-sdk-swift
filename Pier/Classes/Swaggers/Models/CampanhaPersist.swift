//
// CampanhaPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Campanha */
public class CampanhaPersist: JSONEncodable {

    /** Nome da campanha. */
    public var nome: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo da campanha. */
    public var idTipoCampanha: Int?
    /** Lista com os planos de campanha. */
    public var planosCampanhas: [PlanoCampanhaPersist]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["idTipoCampanha"] = self.idTipoCampanha
        nillableDictionary["planosCampanhas"] = self.planosCampanhas?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
