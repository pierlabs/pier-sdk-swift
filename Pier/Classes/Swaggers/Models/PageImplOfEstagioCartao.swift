//
// PageImplOfEstagioCartao.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PageImplOfEstagioCartao: JSONEncodable {

    public var last: Bool?
    public var totalElements: Int?
    public var totalPages: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["last"] = self.last
        nillableDictionary["totalElements"] = self.totalElements
        nillableDictionary["totalPages"] = self.totalPages
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
