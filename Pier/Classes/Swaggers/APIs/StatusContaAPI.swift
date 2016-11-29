//
// StatusContaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusContaAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - parameter idStatusConta: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET4(idStatusConta idStatusConta: Int, completion: ((data: StatusConta?, error: ErrorType?) -> Void)) {
        consultarUsingGET4WithRequestBuilder(idStatusConta: idStatusConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - GET /api/status-contas/{idStatusConta}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "mensagemConsultaNegada" : "aeiou",
  "flagAlteraLimite" : 123,
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter idStatusConta: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 

     - returns: RequestBuilder<StatusConta> 
     */
    public class func consultarUsingGET4WithRequestBuilder(idStatusConta idStatusConta: Int) -> RequestBuilder<StatusConta> {
        var path = "/api/status-contas/{idStatusConta}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusConta}", withString: "\(idStatusConta)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusConta>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter flagAlteraLimite: (query) Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter mensagemConsultaNegada: (query) Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET5(id id: Int?, nome: String?, flagAlteraLimite: Int?, mensagemConsultaNegada: String?, page: Int?, limit: Int?, completion: ((data: PageStatusContas?, error: ErrorType?) -> Void)) {
        listarUsingGET5WithRequestBuilder(id: id, nome: nome, flagAlteraLimite: flagAlteraLimite, mensagemConsultaNegada: mensagemConsultaNegada, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - GET /api/status-contas
     - Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
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
    "mensagemConsultaNegada" : "aeiou",
    "flagAlteraLimite" : 123,
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
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter flagAlteraLimite: (query) Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter mensagemConsultaNegada: (query) Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageStatusContas> 
     */
    public class func listarUsingGET5WithRequestBuilder(id id: Int?, nome: String?, flagAlteraLimite: Int?, mensagemConsultaNegada: String?, page: Int?, limit: Int?) -> RequestBuilder<PageStatusContas> {
        let path = "/api/status-contas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "flagAlteraLimite": flagAlteraLimite,
            "mensagemConsultaNegada": mensagemConsultaNegada,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusContas>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
