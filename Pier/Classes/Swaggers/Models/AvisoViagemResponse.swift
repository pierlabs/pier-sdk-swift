//
// AvisoViagemResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{aviso_viagem_response_description}}} */
public class AvisoViagemResponse: JSONEncodable {

    /** {{{aviso_viagem_response_id_value}}} */
    public var id: Int?
    /** {{{aviso_viagem_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{aviso_viagem_response_codigo_pais_value}}} */
    public var codigoPais: String?
    /** {{{aviso_viagem_response_data_inicio_value}}} */
    public var dataInicio: String?
    /** {{{aviso_viagem_response_data_fim_value}}} */
    public var dataFim: String?
    /** {{{aviso_viagem_response_flag_ativo_value}}} */
    public var flagAtivo: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["codigoPais"] = self.codigoPais
        nillableDictionary["dataInicio"] = self.dataInicio
        nillableDictionary["dataFim"] = self.dataFim
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
