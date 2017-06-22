//
// DetalhesFaturaConsignadaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto contendo os detalhes de uma fatura consignada */
public class DetalhesFaturaConsignadaResponse: JSONEncodable {

    /** Apresenta os detalhes da fatura */
    public var faturaConsignadaResponse: FaturaConsignadaResponse?
    /** Apresenta as transa\u00C3\u00A7\u00C3\u00B5es relacionadas a fatura. */
    public var transacoes: [TransacoesCorrentesResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["faturaConsignadaResponse"] = self.faturaConsignadaResponse?.encodeToJSON()
        nillableDictionary["transacoes"] = self.transacoes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
