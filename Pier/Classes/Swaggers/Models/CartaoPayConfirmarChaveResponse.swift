//
// CartaoPayConfirmarChaveResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Resposta da requisi\u00C3\u00A7\u00C3\u00A3o para confirma\u00C3\u00A7\u00C3\u00A3o da chave de criptograma */
public class CartaoPayConfirmarChaveResponse: JSONEncodable {

    public enum Status: String { 
        case Ativo = "ATIVO"
        case Inativo = "INATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** Id do cart\u00C3\u00A3o */
    public var id: Int?
    /** N\u00C3\u00BAmero do cart\u00C3\u00A3o real criptografado */
    public var numeroCartao: String?
    /** Data de validade do cart\u00C3\u00A3o */
    public var dataValidadeCartao: String?
    /** Nome impresso no cart\u00C3\u00A3o criptografado */
    public var nomeImpresso: String?
    /** Identificador do emissor do cart\u00C3\u00A3o */
    public var idEntidade: Int?
    /** Nome do emissor do cart\u00C3\u00A3o */
    public var nomeEntidade: String?
    /** Status do cart\u00C3\u00A3o */
    public var status: Status?
    /** Data de validade da chave do criptograma */
    public var dataValidadeChaveCriptograma: String?
    /** Chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o criptografada */
    public var chaveCriptograma: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["dataValidadeCartao"] = self.dataValidadeCartao
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["idEntidade"] = self.idEntidade
        nillableDictionary["nomeEntidade"] = self.nomeEntidade
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["dataValidadeChaveCriptograma"] = self.dataValidadeChaveCriptograma
        nillableDictionary["chaveCriptograma"] = self.chaveCriptograma
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
