//
// CartaoPayAtualizarChaveResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{cartao_pay_atualizar_chave_response_description}}} */
public class CartaoPayAtualizarChaveResponse: JSONEncodable {

    public enum Status: String { 
        case Ativo = "ATIVO"
        case Inativo = "INATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** {{{cartao_pay_base_response_id_value}}} */
    public var id: Int?
    /** {{{cartao_pay_base_response_numero_cartao_value}}} */
    public var numeroCartao: String?
    /** {{{cartao_pay_base_response_data_validade_cartao_value}}} */
    public var dataValidadeCartao: String?
    /** {{{cartao_pay_base_response_nome_impresso_value}}} */
    public var nomeImpresso: String?
    /** {{{cartao_pay_base_response_id_entidade_value}}} */
    public var idEntidade: Int?
    /** {{{cartao_pay_base_response_nome_entidade_value}}} */
    public var nomeEntidade: String?
    /** {{{cartao_pay_base_response_status_value}}} */
    public var status: Status?
    /** {{{cartao_pay_atualizar_chave_response_chave_criptograma_value}}} */
    public var chaveCriptograma: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["dataValidadeCartao"] = self.dataValidadeCartao
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["idEntidade"] = self.idEntidade
        nillableDictionary["nomeEntidade"] = self.nomeEntidade
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["chaveCriptograma"] = self.chaveCriptograma
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
