//
// AdicionalUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{adicional_update_description}}} */
public class AdicionalUpdate: JSONEncodable {

    /** {{{adicional_update_nome_value}}} */
    public var nome: String?
    /** {{{adicional_update_nome_impresso_value}}} */
    public var nomeImpresso: String?
    /** {{{adicional_update_numero_receita_federal_value}}} */
    public var numeroReceitaFederal: String?
    /** {{{adicional_update_data_nascimento_value}}} */
    public var dataNascimento: String?
    /** {{{adicional_update_sexo_value}}} */
    public var sexo: String?
    /** {{{adicional_update_numero_identidade_value}}} */
    public var numeroIdentidade: String?
    /** {{{adicional_update_orgao_expedidor_identidade_value}}} */
    public var orgaoExpedidorIdentidade: String?
    /** {{{adicional_update_unidade_federativa_identidade_value}}} */
    public var unidadeFederativaIdentidade: String?
    /** {{{adicional_update_data_emissao_identidade_value}}} */
    public var dataEmissaoIdentidade: String?
    /** {{{adicional_update_id_parentesco_value}}} */
    public var idParentesco: Int?
    /** {{{adicional_update_telefones_value}}} */
    public var telefones: [TelefoneAdicionalUpdate]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["numeroReceitaFederal"] = self.numeroReceitaFederal
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["sexo"] = self.sexo
        nillableDictionary["numeroIdentidade"] = self.numeroIdentidade
        nillableDictionary["orgaoExpedidorIdentidade"] = self.orgaoExpedidorIdentidade
        nillableDictionary["unidadeFederativaIdentidade"] = self.unidadeFederativaIdentidade
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        nillableDictionary["idParentesco"] = self.idParentesco
        nillableDictionary["telefones"] = self.telefones?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
