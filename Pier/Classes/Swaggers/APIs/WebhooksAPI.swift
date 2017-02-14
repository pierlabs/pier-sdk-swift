//
// WebhooksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class WebhooksAPI: APIBase {
    /**
     
     Alterar Webhook
     
     - parameter id: (query) C\u00C3\u00B3digo identificador do Webhook 
     - parameter evento: (query) Evento a ser chamado pelo WebHook 
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook 
     - parameter url: (query) URL que a ser consumida pelo WebHook 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT3(id id: Int, evento: String, metodo: String, url: String, completion: ((data: WebHook?, error: ErrorType?) -> Void)) {
        alterarUsingPUT3WithRequestBuilder(id: id, evento: evento, metodo: metodo, url: url).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Alterar Webhook
     
     - PUT /api/webhooks
     - Este m\u00C3\u00A9todo permite que seja modificado um webhooks j\u00C3\u00A1 cadastrado
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "evento" : "aeiou",
  "id" : 123456789,
  "metodo" : "aeiou",
  "url" : "aeiou"
}}]
     
     - parameter id: (query) C\u00C3\u00B3digo identificador do Webhook 
     - parameter evento: (query) Evento a ser chamado pelo WebHook 
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook 
     - parameter url: (query) URL que a ser consumida pelo WebHook 

     - returns: RequestBuilder<WebHook> 
     */
    public class func alterarUsingPUT3WithRequestBuilder(id id: Int, evento: String, metodo: String, url: String) -> RequestBuilder<WebHook> {
        let path = "/api/webhooks"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "evento": evento,
            "metodo": metodo,
            "url": url
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<WebHook>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Consultar Webhook
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Webhook (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET10(id id: Int, completion: ((data: WebHook?, error: ErrorType?) -> Void)) {
        consultarUsingGET10WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar Webhook
     
     - GET /api/webhooks/{id}
     - Este m\u00C3\u00A9todo permite que sejam consultado um webhook do emissor atrav\u00C3\u00A9s de um id especifico
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "evento" : "aeiou",
  "id" : 123456789,
  "metodo" : "aeiou",
  "url" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Webhook (id). 

     - returns: RequestBuilder<WebHook> 
     */
    public class func consultarUsingGET10WithRequestBuilder(id id: Int) -> RequestBuilder<WebHook> {
        var path = "/api/webhooks/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<WebHook>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os Webhooks
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter id: (query) Id do WebHook (optional)
     - parameter evento: (query) Evento a ser chamado pelo WebHook (optional)
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook (optional)
     - parameter url: (query) URL que a ser consumida pelo WebHook (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET11(page page: Int?, limit: Int?, id: Int?, evento: String?, metodo: String?, url: String?, completion: ((data: PageWebHooks?, error: ErrorType?) -> Void)) {
        listarUsingGET11WithRequestBuilder(page: page, limit: limit, id: id, evento: evento, metodo: metodo, url: url).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Webhooks
     
     - GET /api/webhooks
     - Este m\u00C3\u00A9todo permite que sejam listados os webhooks existentes
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "evento" : "aeiou",
    "id" : 123456789,
    "metodo" : "aeiou",
    "url" : "aeiou"
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
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter id: (query) Id do WebHook (optional)
     - parameter evento: (query) Evento a ser chamado pelo WebHook (optional)
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook (optional)
     - parameter url: (query) URL que a ser consumida pelo WebHook (optional)

     - returns: RequestBuilder<PageWebHooks> 
     */
    public class func listarUsingGET11WithRequestBuilder(page page: Int?, limit: Int?, id: Int?, evento: String?, metodo: String?, url: String?) -> RequestBuilder<PageWebHooks> {
        let path = "/api/webhooks"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit,
            "id": id,
            "evento": evento,
            "metodo": metodo,
            "url": url
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageWebHooks>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Salvar Webhook
     
     - parameter evento: (query) Evento a ser chamado pelo WebHook 
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook 
     - parameter url: (query) URL que a ser consumida pelo WebHook 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST4(evento evento: String, metodo: String, url: String, completion: ((data: WebHook?, error: ErrorType?) -> Void)) {
        salvarUsingPOST4WithRequestBuilder(evento: evento, metodo: metodo, url: url).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Salvar Webhook
     
     - POST /api/webhooks
     - Este m\u00C3\u00A9todo permite que seja adicionado um novo webhook
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "evento" : "aeiou",
  "id" : 123456789,
  "metodo" : "aeiou",
  "url" : "aeiou"
}}]
     
     - parameter evento: (query) Evento a ser chamado pelo WebHook 
     - parameter metodo: (query) M\u00C3\u00A9todo que a ser chamado pelo WebHook 
     - parameter url: (query) URL que a ser consumida pelo WebHook 

     - returns: RequestBuilder<WebHook> 
     */
    public class func salvarUsingPOST4WithRequestBuilder(evento evento: String, metodo: String, url: String) -> RequestBuilder<WebHook> {
        let path = "/api/webhooks"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "evento": evento,
            "metodo": metodo,
            "url": url
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<WebHook>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

}
