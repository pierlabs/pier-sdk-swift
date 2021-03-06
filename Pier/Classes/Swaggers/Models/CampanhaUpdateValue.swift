//
// CampanhaUpdateValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{campanha_update_description}}} */
public class CampanhaUpdateValue: JSONEncodable {

    /** {{{campanha_update_nome_value}}} */
    public var nome: String?
    /** {{{campanha_update_id_tipo_campanha_value}}} */
    public var idTipoCampanha: Int?
    /** {{{campanha_update_planos_campanhas_value}}} */
    public var planosCampanhas: [PlanoCampanhaUpdateValue]?
    

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
