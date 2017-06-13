//
// LinkHistoricoAssessoriaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da resposta do {@link HistoricoAssessoriaResponse} */
public class LinkHistoricoAssessoriaResponse: JSONEncodable {

    /** Apresenta a data e hora do hist\u00C3\u00B3rico */
    public var dataHoraHistorico: String?
    /** Apresenta o tipo do hist\u00C3\u00B3rico podendo ser ENTRADA ou SAIDA */
    public var tipoHistorico: String?
    /** Apresenta o nome da Assessoria de Cobran\u00C3\u00A7a relacionada ao hist\u00C3\u00B3rico */
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
