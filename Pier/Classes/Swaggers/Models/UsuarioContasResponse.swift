//
// UsuarioContasResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{usuario_conta_resposta_descricao}}} */
public class UsuarioContasResponse: JSONEncodable {

    /** {{{usuario_conta_resposta_id_descricao}}} */
    public var id: Int?
    /** {{{usuario_conta_resposta_id_conta_descricao}}} */
    public var idConta: Int?
    /** {{{usuario_conta_resposta_id_pessoa_descricao}}} */
    public var idPessoa: Int?
    /** {{{usuario_conta_resposta_id_usuario_descricao}}} */
    public var idUsuario: Int?
    /** {{{usuario_conta_resposta_nivel_acesso_descricao}}} */
    public var nivelAcesso: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idUsuario"] = self.idUsuario
        nillableDictionary["nivelAcesso"] = self.nivelAcesso
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
