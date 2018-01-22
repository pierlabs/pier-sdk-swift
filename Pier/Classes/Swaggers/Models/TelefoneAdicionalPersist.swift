//
// TelefoneAdicionalPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Telefone */
public class TelefoneAdicionalPersist: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). */
    public var idTipoTelefone: Int?
    /** C\u00C3\u00B3digo DDD do telefone (id). */
    public var ddd: String?
    /** N\u00C3\u00BAmero do telefone. */
    public var telefone: String?
    /** N\u00C3\u00BAmero do ramal. */
    public var ramal: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTipoTelefone"] = self.idTipoTelefone
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["ramal"] = self.ramal
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
