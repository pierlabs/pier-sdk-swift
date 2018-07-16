//
// ValidaCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{valida_cartao_response_description}}} */
public class ValidaCartaoResponse: JSONEncodable {

    /** {{{valida_cartao_response_id_status_cartao_value}}} */
    public var idStatusCartao: Int?
    /** {{{valida_cartao_response_status_cartao_value}}} */
    public var statusCartao: String?
    /** {{{valida_cartao_response_id_status_conta_value}}} */
    public var idStatusConta: Int?
    /** {{{valida_cartao_response_status_conta_value}}} */
    public var statusConta: String?
    /** {{{valida_cartao_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{valida_cartao_response_numero_agencia_value}}} */
    public var numeroAgencia: Int?
    /** {{{valida_cartao_response_numero_conta_corrente_value}}} */
    public var numeroContaCorrente: String?
    /** {{{valida_cartao_response_criptograma_resposta_value}}} */
    public var criptogramaResposta: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idStatusCartao"] = self.idStatusCartao
        nillableDictionary["statusCartao"] = self.statusCartao
        nillableDictionary["idStatusConta"] = self.idStatusConta
        nillableDictionary["statusConta"] = self.statusConta
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["criptogramaResposta"] = self.criptogramaResposta
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
