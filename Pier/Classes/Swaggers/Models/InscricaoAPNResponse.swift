//
// InscricaoAPNResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{inscricao_apn_resposta_descricao}}} */
public class InscricaoAPNResponse: JSONEncodable {

    /** {{{inscricao_apn_resposta_aplicacao_mobile_descricao}}} */
    public var aplicacaoMobile: AplicacaoMobileEmissorResponse?
    /** {{{inscricao_apn_resposta_ativo_descricao}}} */
    public var ativo: Bool?
    /** {{{inscricao_apn_resposta_cartao_descricao}}} */
    public var cartao: CartaoEmissorResponse?
    /** {{{inscricao_apn_resposta_data_criacao_descricao}}} */
    public var dataCriacao: String?
    /** {{{inscricao_apn_resposta_data_desativacao_descricao}}} */
    public var dataDesativacao: String?
    /** {{{inscricao_apn_resposta_device_token_descricao}}} */
    public var deviceToken: String?
    /** {{{inscricao_apn_resposta_id_descricao}}} */
    public var id: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["aplicacaoMobile"] = self.aplicacaoMobile?.encodeToJSON()
        nillableDictionary["ativo"] = self.ativo
        nillableDictionary["cartao"] = self.cartao?.encodeToJSON()
        nillableDictionary["dataCriacao"] = self.dataCriacao
        nillableDictionary["dataDesativacao"] = self.dataDesativacao
        nillableDictionary["deviceToken"] = self.deviceToken
        nillableDictionary["id"] = self.id
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
