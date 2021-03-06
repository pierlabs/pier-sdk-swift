//
// TipoBoletoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_boleto_response_description}}} */
public class TipoBoletoResponse: JSONEncodable {

    /** {{{tipo_boleto_response_id_value}}} */
    public var id: Int?
    /** {{{tipo_boleto_response_descricao_value}}} */
    public var descricao: String?
    /** {{{tipo_boleto_response_banco_value}}} */
    public var banco: Int?
    /** {{{tipo_boleto_response_faixa_nosso_numero_value}}} */
    public var faixaNossoNumero: Int?
    /** {{{tipo_boleto_response_min_nosso_numero_value}}} */
    public var minNossoNumero: Double?
    /** {{{tipo_boleto_response_max_nosso_numero_value}}} */
    public var maxNossoNumero: Double?
    /** {{{tipo_boleto_response_tam_nosso_numero_value}}} */
    public var tamNossoNumero: Int?
    /** {{{tipo_boleto_response_ultimo_nosso_numero_value}}} */
    public var ultimoNossoNumero: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["banco"] = self.banco
        nillableDictionary["faixaNossoNumero"] = self.faixaNossoNumero
        nillableDictionary["minNossoNumero"] = self.minNossoNumero
        nillableDictionary["maxNossoNumero"] = self.maxNossoNumero
        nillableDictionary["tamNossoNumero"] = self.tamNossoNumero
        nillableDictionary["ultimoNossoNumero"] = self.ultimoNossoNumero
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
