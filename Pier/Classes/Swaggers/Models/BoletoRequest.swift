//
// BoletoRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{boleto_request_description}}} */
public class BoletoRequest: JSONEncodable {

    /** {{{boleto_request_id_conta_value}}} */
    public var idConta: Int?
    /** {{{boleto_request_tipo_boleto_value}}} */
    public var tipoBoleto: Int?
    /** {{{boleto_request_valor_value}}} */
    public var valor: Double?
    /** {{{boleto_request_data_vencimento_value}}} */
    public var dataVencimento: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["tipoBoleto"] = self.tipoBoleto
        nillableDictionary["valor"] = self.valor
        nillableDictionary["dataVencimento"] = self.dataVencimento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
