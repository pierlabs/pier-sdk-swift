//
// AtribuirAssinaturaClientePersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{atribuir_assinatura_cliente_persist_description}}} */
public class AtribuirAssinaturaClientePersist: JSONEncodable {

    /** {{{atribuir_assinatura_cliente_persist_id_arquivo_value}}} */
    public var idArquivo: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idArquivo"] = self.idArquivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
