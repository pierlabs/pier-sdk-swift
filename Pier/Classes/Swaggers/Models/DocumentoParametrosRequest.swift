//
// DocumentoParametrosRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto que encapsula os par\u00C3\u00A2metros para gera\u00C3\u00A7\u00C3\u00A3o de um documento */
public class DocumentoParametrosRequest: JSONEncodable {

    /** ID para o template do documento. */
    public var idTemplateDocumento: Int?
    /** Nome para o arquivo. */
    public var nome: String?
    /** Lista de par\u00C3\u00A2metros para montagem do documento. */
    public var parametrosConteudo: [PropriedadeDocumentoRequest]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTemplateDocumento"] = self.idTemplateDocumento
        nillableDictionary["nome"] = self.nome
        nillableDictionary["parametrosConteudo"] = self.parametrosConteudo?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}