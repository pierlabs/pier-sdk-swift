//
// ValidaCartao.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de resposta para a valida\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00A3o */
public class ValidaCartao: JSONEncodable {

    /** Criptograma de resposta */
    public var criptogramaResposta: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status do cart\u00C3\u00A3o */
    public var statusCartao: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status da conta */
    public var statusConta: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["criptogramaResposta"] = self.criptogramaResposta
        nillableDictionary["statusCartao"] = self.statusCartao
        nillableDictionary["statusConta"] = self.statusConta
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
