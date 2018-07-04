//
// TipoFaturamentoPorContaPersistValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_faturamento_por_conta_persist_description}}} */
public class TipoFaturamentoPorContaPersistValue: JSONEncodable {

    /** {{{tipo_faturamento_por_conta_persist_id_conta_value}}} */
    public var idConta: Int?
    /** {{{tipo_faturamento_por_conta_persist_id_tipo_faturamento_value}}} */
    public var idTipoFaturamento: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idTipoFaturamento"] = self.idTipoFaturamento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}