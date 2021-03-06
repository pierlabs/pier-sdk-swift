//
// DispositivoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{dispositivo_response_description}}} */
public class DispositivoResponse: JSONEncodable {

    /** {{{dispositivo_response_id_value}}} */
    public var id: Int?
    /** {{{dispositivo_response_token_value}}} */
    public var token: String?
    /** {{{dispositivo_response_id_aplicacao_mobile_value}}} */
    public var idAplicacaoMobile: Int?
    /** {{{dispositivo_response_id_usuario_value}}} */
    public var idUsuario: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["token"] = self.token
        nillableDictionary["idAplicacaoMobile"] = self.idAplicacaoMobile
        nillableDictionary["idUsuario"] = self.idUsuario
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
