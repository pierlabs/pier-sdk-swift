//
// TipoFaturamentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_faturamento_response_description}}} */
public class TipoFaturamentoResponse: JSONEncodable {

    /** {{{tipo_faturamento_response_id_value}}} */
    public var id: Int?
    /** {{{tipo_faturamento_response_descricao_value}}} */
    public var descricao: String?
    /** {{{tipo_faturamento_response_flag_apenas_demonstrativo_value}}} */
    public var flagApenasDemonstrativo: Bool?
    /** {{{tipo_faturamento_response_id_convenio_value}}} */
    public var idConvenio: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["flagApenasDemonstrativo"] = self.flagApenasDemonstrativo
        nillableDictionary["idConvenio"] = self.idConvenio
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
