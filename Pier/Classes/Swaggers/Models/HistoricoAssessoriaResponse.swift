//
// HistoricoAssessoriaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{historico_assessoria_response_description}}} */
public class HistoricoAssessoriaResponse: JSONEncodable {

    /** {{{historico_assessoria_response_data_hora_historico_value}}} */
    public var dataHoraHistorico: String?
    /** {{{historico_assessoria_response_tipo_historico_value}}} */
    public var tipoHistorico: String?
    /** {{{historico_assessoria_response_nome_assessoria_value}}} */
    public var nomeAssessoria: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataHoraHistorico"] = self.dataHoraHistorico
        nillableDictionary["tipoHistorico"] = self.tipoHistorico
        nillableDictionary["nomeAssessoria"] = self.nomeAssessoria
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
