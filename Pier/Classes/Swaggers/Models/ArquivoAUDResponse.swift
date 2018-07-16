//
// ArquivoAUDResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{arquivo_a_u_d_response_description}}} */
public class ArquivoAUDResponse: JSONEncodable {

    /** {{{arquivo_a_u_d_response_rev_value}}} */
    public var rev: Int?
    /** {{{arquivo_a_u_d_response_rev_type_value}}} */
    public var revType: Int?
    /** {{{arquivo_a_u_d_response_id_value}}} */
    public var id: Int?
    /** {{{arquivo_a_u_d_response_nome_value}}} */
    public var nome: String?
    /** {{{arquivo_a_u_d_response_id_resposta_acesso_digital_value}}} */
    public var idRespostaAcessoDigital: String?
    /** {{{arquivo_a_u_d_response_data_hora_resposta_acesso_digital_value}}} */
    public var dataHoraRespostaAcessoDigital: String?
    /** {{{arquivo_a_u_d_response_id_resposta_neurotech_value}}} */
    public var idRespostaNeurotech: String?
    /** {{{arquivo_a_u_d_response_data_hora_resposta_neurotech_value}}} */
    public var dataHoraRespostaNeurotech: String?
    /** {{{arquivo_a_u_d_response_uri_value}}} */
    public var uri: String?
    /** {{{arquivo_a_u_d_response_data_hora_inclusao_value}}} */
    public var dataHoraInclusao: String?
    /** {{{arquivo_a_u_d_response_data_hora_alteracao_value}}} */
    public var dataHoraAlteracao: String?
    /** {{{arquivo_a_u_d_response_extensao_value}}} */
    public var extensao: String?
    /** {{{arquivo_a_u_d_response_parametros_value}}} */
    public var parametros: [ArquivoParametroAUDResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rev"] = self.rev
        nillableDictionary["revType"] = self.revType
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["idRespostaAcessoDigital"] = self.idRespostaAcessoDigital
        nillableDictionary["dataHoraRespostaAcessoDigital"] = self.dataHoraRespostaAcessoDigital
        nillableDictionary["idRespostaNeurotech"] = self.idRespostaNeurotech
        nillableDictionary["dataHoraRespostaNeurotech"] = self.dataHoraRespostaNeurotech
        nillableDictionary["uri"] = self.uri
        nillableDictionary["dataHoraInclusao"] = self.dataHoraInclusao
        nillableDictionary["dataHoraAlteracao"] = self.dataHoraAlteracao
        nillableDictionary["extensao"] = self.extensao
        nillableDictionary["parametros"] = self.parametros?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
