//
// PessoaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{pessoa_response_description}}} */
public class PessoaResponse: JSONEncodable {

    /** {{{pessoa_response_id_value}}} */
    public var id: Int?
    /** {{{pessoa_response_nome_value}}} */
    public var nome: String?
    /** {{{pessoa_response_tipo_value}}} */
    public var tipo: String?
    /** {{{pessoa_response_cpf_value}}} */
    public var cpf: String?
    /** {{{pessoa_response_cnpj_value}}} */
    public var cnpj: String?
    /** {{{pessoa_response_data_nascimento_value}}} */
    public var dataNascimento: String?
    /** {{{pessoa_response_numero_identidade_value}}} */
    public var numeroIdentidade: String?
    /** {{{pessoa_response_orgao_expedidor_identidade_value}}} */
    public var orgaoExpedidorIdentidade: String?
    /** {{{pessoa_response_sexo_value}}} */
    public var sexo: String?
    /** {{{pessoa_response_unidade_federativa_identidade_value}}} */
    public var unidadeFederativaIdentidade: String?
    /** {{{pessoa_response_data_emissao_identidade_value}}} */
    public var dataEmissaoIdentidade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["tipo"] = self.tipo
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["cnpj"] = self.cnpj
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["numeroIdentidade"] = self.numeroIdentidade
        nillableDictionary["orgaoExpedidorIdentidade"] = self.orgaoExpedidorIdentidade
        nillableDictionary["sexo"] = self.sexo
        nillableDictionary["unidadeFederativaIdentidade"] = self.unidadeFederativaIdentidade
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
