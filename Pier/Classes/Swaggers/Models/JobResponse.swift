//
// JobResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{job_response_description}}} */
public class JobResponse: JSONEncodable {

    public enum Status: String { 
        case Inativo = "INATIVO"
        case Ativo = "ATIVO"
    }
    
    /** {{{job_response_id_value}}} */
    public var id: Int?
    /** {{{job_response_descricao_value}}} */
    public var descricao: String?
    /** {{{job_response_groovy_value}}} */
    public var groovy: String?
    /** {{{job_response_cron_value}}} */
    public var cron: String?
    /** {{{job_response_status_value}}} */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["groovy"] = self.groovy
        nillableDictionary["cron"] = self.cron
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
