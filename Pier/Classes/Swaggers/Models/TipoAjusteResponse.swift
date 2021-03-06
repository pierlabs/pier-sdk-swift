//
// TipoAjusteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_ajuste_response_description}}} */
public class TipoAjusteResponse: JSONEncodable {

    /** {{{tipo_ajuste_response_id_value}}} */
    public var id: Int?
    /** {{{tipo_ajuste_response_descricao_value}}} */
    public var descricao: String?
    /** {{{tipo_ajuste_response_transacoes_value}}} */
    public var transacoes: [TipoTransacaoAjusteResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["transacoes"] = self.transacoes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
