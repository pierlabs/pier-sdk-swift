//
// CartaoImpressaoProvisorioResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{cartao_impressao_provisorio_response_description}}} */
public class CartaoImpressaoProvisorioResponse: JSONEncodable {

    public var flagVirtual: Int?
    /** {{{cartao_impressao_provisorio_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{cartao_impressao_provisorio_response_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{cartao_impressao_provisorio_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{cartao_impressao_provisorio_response_numero_cartao_value}}} */
    public var numeroCartao: String?
    /** {{{cartao_impressao_provisorio_response_nome_plastico_value}}} */
    public var nomePlastico: String?
    /** {{{cartao_impressao_provisorio_response_data_validade_value}}} */
    public var dataValidade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["flagVirtual"] = self.flagVirtual
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["nomePlastico"] = self.nomePlastico
        nillableDictionary["dataValidade"] = self.dataValidade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
