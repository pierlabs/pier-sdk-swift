//
// ReferenciaComercialAprovadoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{referencia_comercial_aprovado_response_description}}} */
public class ReferenciaComercialAprovadoResponse: JSONEncodable {

    /** {{{referencia_comercial_aprovado_response_razao_social_value}}} */
    public var razaoSocial: String?
    /** {{{referencia_comercial_aprovado_response_nome_contrato_value}}} */
    public var nomeContrato: String?
    /** {{{referencia_comercial_aprovado_response_ddd_value}}} */
    public var ddd: String?
    /** {{{referencia_comercial_aprovado_response_telefone_value}}} */
    public var telefone: String?
    /** {{{referencia_comercial_aprovado_response_email_value}}} */
    public var email: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["razaoSocial"] = self.razaoSocial
        nillableDictionary["nomeContrato"] = self.nomeContrato
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["email"] = self.email
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
