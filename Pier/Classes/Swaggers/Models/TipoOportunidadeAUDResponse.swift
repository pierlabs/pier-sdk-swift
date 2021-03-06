//
// TipoOportunidadeAUDResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_oportunidade_a_u_d_response_description}}} */
public class TipoOportunidadeAUDResponse: JSONEncodable {

    /** {{{tipo_oportunidade_a_u_d_response_rev_value}}} */
    public var rev: Int?
    /** {{{tipo_oportunidade_a_u_d_response_rev_type_value}}} */
    public var revType: Int?
    /** {{{tipo_oportunidade_a_u_d_response_rev_date_value}}} */
    public var revDate: String?
    /** {{{tipo_oportunidade_a_u_d_response_id_value}}} */
    public var id: Int?
    /** {{{tipo_oportunidade_a_u_d_response_descricao_value}}} */
    public var descricao: String?
    /** {{{tipo_oportunidade_a_u_d_response_flag_ativo_value}}} */
    public var flagAtivo: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rev"] = self.rev
        nillableDictionary["revType"] = self.revType
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
