//
// StatusImpressaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{status_impressao_response_description}}} */
public class StatusImpressaoResponse: JSONEncodable {

    /** {{{status_impressao_response_id_value}}} */
    public var id: Int?
    /** {{{status_impressao_response_nome_value}}} */
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
