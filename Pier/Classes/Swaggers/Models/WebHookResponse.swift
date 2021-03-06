//
// WebHookResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{web_hook_response_description}}} */
public class WebHookResponse: JSONEncodable {

    public enum TipoEvento: String { 
        case RiscoFraude = "RISCO_FRAUDE"
        case CodigoSeguranca = "CODIGO_SEGURANCA"
        case Outros = "OUTROS"
        case Otp3dSecure = "OTP_3D_SECURE"
    }
    
    public enum Metodo: String { 
        case Get = "GET"
        case Post = "POST"
        case Put = "PUT"
        case Delete = "DELETE"
    }
    
    public enum Status: String { 
        case Inativo = "INATIVO"
        case Ativo = "ATIVO"
    }
    
    /** {{{web_hook_response_id_value}}} */
    public var id: Int?
    /** {{{web_hook_response_tipo_evento_value}}} */
    public var tipoEvento: TipoEvento?
    /** {{{web_hook_response_metodo_value}}} */
    public var metodo: Metodo?
    /** {{{web_hook_response_url_value}}} */
    public var url: String?
    /** {{{web_hook_response_status_value}}} */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["tipoEvento"] = self.tipoEvento?.rawValue
        nillableDictionary["metodo"] = self.metodo?.rawValue
        nillableDictionary["url"] = self.url
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
