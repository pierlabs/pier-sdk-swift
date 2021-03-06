//
// BaseResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{base_response_description}}} */
public class BaseResponse: JSONEncodable {

    /** {{{base_dto_id_value}}} */
    public var id: Int?
    /** {{{base_dto_servidor_value}}} */
    public var servidor: String?
    /** {{{base_dto_usuario_value}}} */
    public var usuario: String?
    /** {{{base_dto_nome_base_value}}} */
    public var nomeBase: String?
    /** {{{base_dto_domain_value}}} */
    public var domain: String?
    /** {{{base_dto_senha_criptografada_value}}} */
    public var senhaCriptografada: Bool?
    /** {{{base_dto_nome_base_controle_acesso_value}}} */
    public var nomeBaseControleAcesso: String?
    /** {{{base_dto_id_emissor_value}}} */
    public var idEmissor: Int?
    /** {{{base_dto_servidor_controle_acesso_value}}} */
    public var servidorControleAcesso: String?
    /** {{{base_dto_nome_base_usuarios_value}}} */
    public var nomeBaseUsuarios: String?
    /** {{{base_dto_servidor_usuarios_value}}} */
    public var servidorUsuarios: String?
    /** {{{base_dto_flag_cluster_value}}} */
    public var flagCluster: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["servidor"] = self.servidor
        nillableDictionary["usuario"] = self.usuario
        nillableDictionary["nomeBase"] = self.nomeBase
        nillableDictionary["domain"] = self.domain
        nillableDictionary["senhaCriptografada"] = self.senhaCriptografada
        nillableDictionary["nomeBaseControleAcesso"] = self.nomeBaseControleAcesso
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["servidorControleAcesso"] = self.servidorControleAcesso
        nillableDictionary["nomeBaseUsuarios"] = self.nomeBaseUsuarios
        nillableDictionary["servidorUsuarios"] = self.servidorUsuarios
        nillableDictionary["flagCluster"] = self.flagCluster
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
