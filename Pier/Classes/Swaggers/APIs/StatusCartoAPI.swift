//
// StatusCartoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusCartoAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarStatusCartaoUsingGET(idStatusCartao idStatusCartao: Int, completion: ((data: EstgioCarto?, error: ErrorType?) -> Void)) {
        consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao: idStatusCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
     
     - GET /api/status-cartoes/{idStatusCartao}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).  
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "permiteDesbloqueio" : "aeiou",
  "idStatusDestinoDesbloqueio" : 123456789,
  "cancelaConta" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<EstgioCarto> 
     */
    public class func consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao idStatusCartao: Int) -> RequestBuilder<EstgioCarto> {
        var path = "/api/status-cartoes/{idStatusCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusCartao}", withString: "\(idStatusCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EstgioCarto>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
     
     - parameter idStatusCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que deve ser atribu\u00C3\u00ADdo a um idCartao quando ele for desbloqueado. (optional)
     - parameter cancelaConta: (query) Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ter a sua conta Cancelada. (optional)
     - parameter permiteDesbloqueio: (query) Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ser Desbloqueados. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarStatusCartoesUsingGET(idStatusCartao idStatusCartao: Int?, nome: String?, idStatusDestinoDesbloqueio: Int?, cancelaConta: String?, permiteDesbloqueio: String?, page: Int?, limit: Int?, completion: ((data: ListaDeStatusCartes?, error: ErrorType?) -> Void)) {
        listarStatusCartoesUsingGETWithRequestBuilder(idStatusCartao: idStatusCartao, nome: nome, idStatusDestinoDesbloqueio: idStatusDestinoDesbloqueio, cancelaConta: cancelaConta, permiteDesbloqueio: permiteDesbloqueio, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
     
     - GET /api/status-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "statusCartoes" : [ {
    "permiteDesbloqueio" : "aeiou",
    "idStatusDestinoDesbloqueio" : 123456789,
    "cancelaConta" : "aeiou",
    "nome" : "aeiou",
    "id" : 123456789
  } ]
}}]
     
     - parameter idStatusCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que deve ser atribu\u00C3\u00ADdo a um idCartao quando ele for desbloqueado. (optional)
     - parameter cancelaConta: (query) Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ter a sua conta Cancelada. (optional)
     - parameter permiteDesbloqueio: (query) Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ser Desbloqueados. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<ListaDeStatusCartes> 
     */
    public class func listarStatusCartoesUsingGETWithRequestBuilder(idStatusCartao idStatusCartao: Int?, nome: String?, idStatusDestinoDesbloqueio: Int?, cancelaConta: String?, permiteDesbloqueio: String?, page: Int?, limit: Int?) -> RequestBuilder<ListaDeStatusCartes> {
        let path = "/api/status-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id_status_cartao": idStatusCartao,
            "nome": nome,
            "id_status_destino_desbloqueio": idStatusDestinoDesbloqueio,
            "cancela_conta": cancelaConta,
            "permite_desbloqueio": permiteDesbloqueio,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ListaDeStatusCartes>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
