//
// PageEstagiosCartoes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Page de Est\u00C3\u00A1gios Cart\u00C3\u00B5es */
public class PageEstagiosCartoes: JSONEncodable {

    public var estagioCartoes: PageApiOfEstagioCartao?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["estagioCartoes"] = self.estagioCartoes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}