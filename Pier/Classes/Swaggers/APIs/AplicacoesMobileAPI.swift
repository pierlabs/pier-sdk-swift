//
// AplicacoesMobileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AplicacoesMobileAPI: APIBase {
    /**
     
     Atualiza Aplicacao Mobile
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Aplicacao (id). 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT(id id: Int, update: AplicacaoMobileUpdate, completion: ((data: AplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualiza Aplicacao Mobile
     
     - PUT /api/aplicacoes-mobile/{id}
     - Esse recurso permite atualizar aplicacao mobile.
     - examples: [{contentType=application/json, example={
  "som" : "aeiou",
  "senha" : "aeiou",
  "idPlataformaMobile" : 123456789,
  "cor" : "aeiou",
  "icone" : "aeiou",
  "id" : 123456789,
  "token" : "aeiou",
  "certificadoBase64" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Aplicacao (id). 
     - parameter update: (body) update 

     - returns: RequestBuilder<AplicacaoMobileResponse> 
     */
    public class func atualizarUsingPUTWithRequestBuilder(id id: Int, update: AplicacaoMobileUpdate) -> RequestBuilder<AplicacaoMobileResponse> {
        var path = "/api/aplicacoes-mobile/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os aplicacoes mobile cadastradas
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) Identificador da Aplicacao Mobile (optional)
     - parameter idPlataformaMobile: (query) Identificador da Plataforma Mobile (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET(page page: Int?, limit: Int?, id: String?, idPlataformaMobile: Int?, completion: ((data: PageAplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        listarUsingGETWithRequestBuilder(page: page, limit: limit, id: id, idPlataformaMobile: idPlataformaMobile).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os aplicacoes mobile cadastradas
     
     - GET /api/aplicacoes-mobile
     - Este m\u00C3\u00A9todo permite que sejam listadas as aplicacoes mobile existentes na base do PIER.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "som" : "aeiou",
    "senha" : "aeiou",
    "idPlataformaMobile" : 123456789,
    "cor" : "aeiou",
    "icone" : "aeiou",
    "id" : 123456789,
    "token" : "aeiou",
    "certificadoBase64" : "aeiou"
  } ],
  "totalElements" : 123456789,
  "number" : 123,
  "firstPage" : true,
  "numberOfElements" : 123,
  "size" : 123,
  "totalPages" : 123,
  "hasPreviousPage" : true,
  "first" : true
}}]
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) Identificador da Aplicacao Mobile (optional)
     - parameter idPlataformaMobile: (query) Identificador da Plataforma Mobile (optional)

     - returns: RequestBuilder<PageAplicacaoMobileResponse> 
     */
    public class func listarUsingGETWithRequestBuilder(page page: Int?, limit: Int?, id: String?, idPlataformaMobile: Int?) -> RequestBuilder<PageAplicacaoMobileResponse> {
        let path = "/api/aplicacoes-mobile"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit,
            "id": id,
            "idPlataformaMobile": idPlataformaMobile
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageAplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Cadastra Aplicacao Mobile
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST(persist persist: AplicacaoMobilePersist, completion: ((data: AplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOSTWithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra Aplicacao Mobile
     
     - POST /api/aplicacoes-mobile
     - Esse recurso permite cadastrar aplicacoes mobile.
     - examples: [{contentType=application/json, example={
  "som" : "aeiou",
  "senha" : "aeiou",
  "idPlataformaMobile" : 123456789,
  "cor" : "aeiou",
  "icone" : "aeiou",
  "id" : 123456789,
  "token" : "aeiou",
  "certificadoBase64" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<AplicacaoMobileResponse> 
     */
    public class func salvarUsingPOSTWithRequestBuilder(persist persist: AplicacaoMobilePersist) -> RequestBuilder<AplicacaoMobileResponse> {
        let path = "/api/aplicacoes-mobile"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
