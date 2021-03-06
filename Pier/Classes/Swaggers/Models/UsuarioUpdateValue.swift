//
// UsuarioUpdateValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{usuario_update_description}}} */
public class UsuarioUpdateValue: JSONEncodable {

    /** {{{usuario_update_nome_value}}} */
    public var nome: String?
    /** {{{usuario_update_login_value}}} */
    public var login: String?
    /** {{{usuario_update_cpf_value}}} */
    public var cpf: String?
    /** {{{usuario_update_email_value}}} */
    public var email: String?
    /** {{{usuario_update_status_value}}} */
    public var status: String?
    /** {{{usuario_update_bloquear_acesso_descricao}}} */
    public var bloquearAcesso: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["login"] = self.login
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["email"] = self.email
        nillableDictionary["status"] = self.status
        nillableDictionary["bloquearAcesso"] = self.bloquearAcesso
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
