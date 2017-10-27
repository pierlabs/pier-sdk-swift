//
// AntecipacaoSimuladaLoteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da resposta do recurso Antecipacao Simulada */
public class AntecipacaoSimuladaLoteResponse: JSONEncodable {

    /** Valor total antecipado. */
    public var valorTotalAntecipado: Double?
    /** Valor total do desconto. */
    public var valorTotalDesconto: Double?
    /** Valor total antecipado com o desconto. */
    public var valorTotalComDesconto: Double?
    /** Antecipa\u00C3\u00A7\u00C3\u00B5es Simuladas. */
    public var antecipacoesSimuladas: [AntecipacaoSimuladaMockResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["valorTotalAntecipado"] = self.valorTotalAntecipado
        nillableDictionary["valorTotalDesconto"] = self.valorTotalDesconto
        nillableDictionary["valorTotalComDesconto"] = self.valorTotalComDesconto
        nillableDictionary["antecipacoesSimuladas"] = self.antecipacoesSimuladas?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
