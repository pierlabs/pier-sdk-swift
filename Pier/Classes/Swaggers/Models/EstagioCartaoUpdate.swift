//
// EstagioCartaoUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{estagio_cartao_update_id}}} */
public class EstagioCartaoUpdate: JSONEncodable {

    /** {{{estagio_cartao_update_id_value}}} */
    public var id: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}