//
// HistoricoEventosResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{historico_eventos_response_description}}} */
public class HistoricoEventosResponse: JSONEncodable {

    /** {{{historico_eventos_response_id_historico_value}}} */
    public var idHistorico: Int?
    /** {{{historico_eventos_response_data_historico_value}}} */
    public var dataHistorico: String?
    /** {{{historico_eventos_response_tipo_historico_value}}} */
    public var tipoHistorico: String?
    /** {{{historico_eventos_response_valor_anterior_value}}} */
    public var valorAnterior: String?
    /** {{{historico_eventos_response_valor_atribuido_value}}} */
    public var valorAtribuido: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idHistorico"] = self.idHistorico
        nillableDictionary["dataHistorico"] = self.dataHistorico
        nillableDictionary["tipoHistorico"] = self.tipoHistorico
        nillableDictionary["valorAnterior"] = self.valorAnterior
        nillableDictionary["valorAtribuido"] = self.valorAtribuido
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
