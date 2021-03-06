//
// LogAcessoUsuarioPersistencia.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{log_acesso_usuario_persistencia_descricao}}} */
public class LogAcessoUsuarioPersistencia: JSONEncodable {

    public enum Status: String { 
        case Sucesso = "SUCESSO"
        case SenhaInvalida = "SENHA_INVALIDA"
        case Bloquedo = "BLOQUEDO"
        case Cadastrado = "CADASTRADO"
        case SenhaAlterado = "SENHA_ALTERADO"
    }
    
    /** {{{log_acesso_usuario_persistencia_id_usuario_descricao}}} */
    public var idUsuario: Int?
    /** {{{log_acesso_usuario_persistencia_login_descricao}}} */
    public var login: String?
    /** {{{log_acesso_usuario_persistencia_message_descricao}}} */
    public var mensagem: String?
    /** {{{log_acesso_usuario_persistencia_versao_app_descricao}}} */
    public var versaoAPP: String?
    /** {{{log_acesso_usuario_persistencia_versao_app_descricao}}} */
    public var device: String?
    /** {{{log_acesso_usuario_persistencia_senha_ok_descricao}}} */
    public var senhaOK: Int?
    /** {{{log_acesso_usuario_persistencia_tentativas_incorretas_descricao}}} */
    public var tentativasIncorretas: Int?
    /** {{{log_acesso_usuario_persistencia_id_plataforma_descricao}}} */
    public var idPlataforma: Int?
    /** {{{log_acesso_usuario_persistencia_status_log_acesso}}} */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idUsuario"] = self.idUsuario
        nillableDictionary["login"] = self.login
        nillableDictionary["mensagem"] = self.mensagem
        nillableDictionary["versaoAPP"] = self.versaoAPP
        nillableDictionary["device"] = self.device
        nillableDictionary["senhaOK"] = self.senhaOK
        nillableDictionary["tentativasIncorretas"] = self.tentativasIncorretas
        nillableDictionary["idPlataforma"] = self.idPlataforma
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
