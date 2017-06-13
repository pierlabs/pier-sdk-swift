//
// Banco.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Banco */
public class Banco: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Banco (id). */
    public var id: Int?
    /** Nome do banco */
    public var nome: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do banco */
    public var descricao: String?
    /** Digito do banco */
    public var digitoBanco: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["digitoBanco"] = self.digitoBanco
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
