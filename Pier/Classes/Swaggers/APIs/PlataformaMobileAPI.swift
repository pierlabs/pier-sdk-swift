//
// PlataformaMobileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PlataformaMobileAPI: APIBase {
    /**
     
     Atualiza Plataforma Mobile
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Plataforma (id). 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT1(id id: Int, update: PlataformaMobileUpdate, completion: ((data: PlataformaMobileResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUT1WithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualiza Plataforma Mobile
     
     - PUT /api/plataformas-mobile/{id}
     - Esse recurso permite atualizar plataforma mobile.
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Plataforma (id). 
     - parameter update: (body) update 

     - returns: RequestBuilder<PlataformaMobileResponse> 
     */
    public class func atualizarUsingPUT1WithRequestBuilder(id id: Int, update: PlataformaMobileUpdate) -> RequestBuilder<PlataformaMobileResponse> {
        var path = "/api/plataformas-mobile/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<PlataformaMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as plataformas mobile cadastradas
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter nome: (query) Nome da Plataforma Mobile (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET20(sort sort: [String]?, page: Int?, limit: Int?, nome: String?, completion: ((data: PagePlataformaMobileResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET20WithRequestBuilder(sort: sort, page: page, limit: limit, nome: nome).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as plataformas mobile cadastradas
     
     - GET /api/plataformas-mobile
     - Este m\u00C3\u00A9todo permite que sejam listadas as plataformas mobile existentes na base do PIER.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "nome" : "aeiou",
    "id" : 123456789
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
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter nome: (query) Nome da Plataforma Mobile (optional)

     - returns: RequestBuilder<PagePlataformaMobileResponse> 
     */
    public class func listarUsingGET20WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, nome: String?) -> RequestBuilder<PagePlataformaMobileResponse> {
        let path = "/api/plataformas-mobile"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "nome": nome
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PagePlataformaMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Cadastra Plataforma Mobile
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST15(persist persist: PlataformaMobilePersist, completion: ((data: PlataformaMobileResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST15WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra Plataforma Mobile
     
     - POST /api/plataformas-mobile
     - Esse recurso permite cadastrar plataformas mobile.
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<PlataformaMobileResponse> 
     */
    public class func salvarUsingPOST15WithRequestBuilder(persist persist: PlataformaMobilePersist) -> RequestBuilder<PlataformaMobileResponse> {
        let path = "/api/plataformas-mobile"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<PlataformaMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}