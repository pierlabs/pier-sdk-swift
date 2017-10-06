//
// StatusParametroAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusParametroAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarEstagioCartaoUsingGET(id id: Int, completion: ((data: EstagioCartaoResponse?, error: ErrorType?) -> Void)) {
        consultarEstagioCartaoUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
     
     - GET /api/estagios-cartoes/{id}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<EstagioCartaoResponse> 
     */
    public class func consultarEstagioCartaoUsingGETWithRequestBuilder(id id: Int) -> RequestBuilder<EstagioCartaoResponse> {
        var path = "/api/estagios-cartoes/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EstagioCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarStatusCartaoUsingGET(id id: Int, completion: ((data: StatusCartaoResponse?, error: ErrorType?) -> Void)) {
        consultarStatusCartaoUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
     
     - GET /api/status-cartoes/{id}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "permiteAtribuirComoBloqueio" : 123,
  "permiteAtribuirComoCancelamento" : 123,
  "cobrarTarifaAoEmitirNovaVia" : 123,
  "nome" : "aeiou",
  "id" : 123456789,
  "permiteDesbloquear" : 123
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<StatusCartaoResponse> 
     */
    public class func consultarStatusCartaoUsingGETWithRequestBuilder(id id: Int) -> RequestBuilder<StatusCartaoResponse> {
        var path = "/api/status-cartoes/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET18(id id: Int, completion: ((data: StatusContaResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET18WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - GET /api/status-contas/{id}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "permiteAlterarVencimento" : 123,
  "permiteFazerTransferencia" : 123,
  "permiteEmitirNovaViaCartao" : 123,
  "permiteAlterarLimite" : 123,
  "permiteAtribuirComoBloqueio" : 123,
  "permiteAtribuirComoCancelamento" : 123,
  "permiteCriarAcordoCobranca" : 123,
  "nome" : "aeiou",
  "id" : 123456789,
  "permiteDesbloquear" : 123,
  "permiteReceberTransferencia" : 123
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 

     - returns: RequestBuilder<StatusContaResponse> 
     */
    public class func consultarUsingGET18WithRequestBuilder(id id: Int) -> RequestBuilder<StatusContaResponse> {
        var path = "/api/status-contas/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusContaResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET19(id id: Int, completion: ((data: StatusImpressaoResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET19WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
     
     - GET /api/status-impressoes/{id}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<StatusImpressaoResponse> 
     */
    public class func consultarUsingGET19WithRequestBuilder(id id: Int) -> RequestBuilder<StatusImpressaoResponse> {
        var path = "/api/status-impressoes/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusImpressaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarEstagiosCartoesUsingGET(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, completion: ((data: PageEstagioCartaoResponse?, error: ErrorType?) -> Void)) {
        listarEstagiosCartoesUsingGETWithRequestBuilder(sort: sort, page: page, limit: limit, id: id, nome: nome).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
     
     - GET /api/estagios-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gio de Entrega que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
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
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)

     - returns: RequestBuilder<PageEstagioCartaoResponse> 
     */
    public class func listarEstagiosCartoesUsingGETWithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?) -> RequestBuilder<PageEstagioCartaoResponse> {
        let path = "/api/estagios-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "nome": nome
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageEstagioCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter permiteDesbloquear: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoBloqueio: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoCancelamento: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter cobrarTarifaAoEmitirNovaVia: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarStatusCartoesUsingGET(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, permiteDesbloquear: Int?, permiteAtribuirComoBloqueio: Int?, permiteAtribuirComoCancelamento: Int?, cobrarTarifaAoEmitirNovaVia: Int?, completion: ((data: PageStatusCartaoResponse?, error: ErrorType?) -> Void)) {
        listarStatusCartoesUsingGETWithRequestBuilder(sort: sort, page: page, limit: limit, id: id, nome: nome, permiteDesbloquear: permiteDesbloquear, permiteAtribuirComoBloqueio: permiteAtribuirComoBloqueio, permiteAtribuirComoCancelamento: permiteAtribuirComoCancelamento, cobrarTarifaAoEmitirNovaVia: cobrarTarifaAoEmitirNovaVia).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
     
     - GET /api/status-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "permiteAtribuirComoBloqueio" : 123,
    "permiteAtribuirComoCancelamento" : 123,
    "cobrarTarifaAoEmitirNovaVia" : 123,
    "nome" : "aeiou",
    "id" : 123456789,
    "permiteDesbloquear" : 123
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
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter permiteDesbloquear: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoBloqueio: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoCancelamento: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter cobrarTarifaAoEmitirNovaVia: (query) Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)

     - returns: RequestBuilder<PageStatusCartaoResponse> 
     */
    public class func listarStatusCartoesUsingGETWithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, permiteDesbloquear: Int?, permiteAtribuirComoBloqueio: Int?, permiteAtribuirComoCancelamento: Int?, cobrarTarifaAoEmitirNovaVia: Int?) -> RequestBuilder<PageStatusCartaoResponse> {
        let path = "/api/status-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "nome": nome,
            "permiteDesbloquear": permiteDesbloquear,
            "permiteAtribuirComoBloqueio": permiteAtribuirComoBloqueio,
            "permiteAtribuirComoCancelamento": permiteAtribuirComoCancelamento,
            "cobrarTarifaAoEmitirNovaVia": cobrarTarifaAoEmitirNovaVia
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter permiteAlterarVencimento: (query) Par\u00C3\u00A2metro que define se o Status da conta permite a solicita\u00C3\u00A7\u00C3\u00A3o da altera\u00C3\u00A7\u00C3\u00A3o do Dia para Vencimento das Faturas, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAlterarLimite: (query) Par\u00C3\u00A2metro que define se o Status da conta permite altera\u00C3\u00A7\u00C3\u00A3o de Limites, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteEmitirNovaViaCartao: (query) Par\u00C3\u00A2metro que define se o Status da conta permite solicitar uma nova via de Cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteFazerTransferencia: (query) Par\u00C3\u00A2metro que define se o Status da conta permite originar Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito para outras Contas do mesmo Emissor ou para uma Conta Banc\u00C3\u00A1ria, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteReceberTransferencia: (query) Par\u00C3\u00A2metro que define se o Status da conta permite  receber Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito originadas de outras Contas do mesmo emissor, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteCriarAcordoCobranca: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ter um Acordo de Cobran\u00C3\u00A7a de D\u00C3\u00ADvida criado para ela, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoBloqueio: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para Bloquear temporariamente uma Conta, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteDesbloquear: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser desbloqueada, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoCancelamento: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para realizar o cancelamento definitivo de uma conta, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET25(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, permiteAlterarVencimento: Int?, permiteAlterarLimite: Int?, permiteEmitirNovaViaCartao: Int?, permiteFazerTransferencia: Int?, permiteReceberTransferencia: Int?, permiteCriarAcordoCobranca: Int?, permiteAtribuirComoBloqueio: Int?, permiteDesbloquear: Int?, permiteAtribuirComoCancelamento: Int?, completion: ((data: PageStatusContaResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET25WithRequestBuilder(sort: sort, page: page, limit: limit, id: id, nome: nome, permiteAlterarVencimento: permiteAlterarVencimento, permiteAlterarLimite: permiteAlterarLimite, permiteEmitirNovaViaCartao: permiteEmitirNovaViaCartao, permiteFazerTransferencia: permiteFazerTransferencia, permiteReceberTransferencia: permiteReceberTransferencia, permiteCriarAcordoCobranca: permiteCriarAcordoCobranca, permiteAtribuirComoBloqueio: permiteAtribuirComoBloqueio, permiteDesbloquear: permiteDesbloquear, permiteAtribuirComoCancelamento: permiteAtribuirComoCancelamento).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - GET /api/status-contas
     - Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "permiteAlterarVencimento" : 123,
    "permiteFazerTransferencia" : 123,
    "permiteEmitirNovaViaCartao" : 123,
    "permiteAlterarLimite" : 123,
    "permiteAtribuirComoBloqueio" : 123,
    "permiteAtribuirComoCancelamento" : 123,
    "permiteCriarAcordoCobranca" : 123,
    "nome" : "aeiou",
    "id" : 123456789,
    "permiteDesbloquear" : 123,
    "permiteReceberTransferencia" : 123
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
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter permiteAlterarVencimento: (query) Par\u00C3\u00A2metro que define se o Status da conta permite a solicita\u00C3\u00A7\u00C3\u00A3o da altera\u00C3\u00A7\u00C3\u00A3o do Dia para Vencimento das Faturas, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAlterarLimite: (query) Par\u00C3\u00A2metro que define se o Status da conta permite altera\u00C3\u00A7\u00C3\u00A3o de Limites, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteEmitirNovaViaCartao: (query) Par\u00C3\u00A2metro que define se o Status da conta permite solicitar uma nova via de Cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteFazerTransferencia: (query) Par\u00C3\u00A2metro que define se o Status da conta permite originar Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito para outras Contas do mesmo Emissor ou para uma Conta Banc\u00C3\u00A1ria, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteReceberTransferencia: (query) Par\u00C3\u00A2metro que define se o Status da conta permite  receber Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito originadas de outras Contas do mesmo emissor, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteCriarAcordoCobranca: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ter um Acordo de Cobran\u00C3\u00A7a de D\u00C3\u00ADvida criado para ela, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoBloqueio: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para Bloquear temporariamente uma Conta, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteDesbloquear: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser desbloqueada, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter permiteAtribuirComoCancelamento: (query) Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para realizar o cancelamento definitivo de uma conta, sendo: 0: Inativo e 1: Ativo. (optional)

     - returns: RequestBuilder<PageStatusContaResponse> 
     */
    public class func listarUsingGET25WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, permiteAlterarVencimento: Int?, permiteAlterarLimite: Int?, permiteEmitirNovaViaCartao: Int?, permiteFazerTransferencia: Int?, permiteReceberTransferencia: Int?, permiteCriarAcordoCobranca: Int?, permiteAtribuirComoBloqueio: Int?, permiteDesbloquear: Int?, permiteAtribuirComoCancelamento: Int?) -> RequestBuilder<PageStatusContaResponse> {
        let path = "/api/status-contas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "nome": nome,
            "permiteAlterarVencimento": permiteAlterarVencimento,
            "permiteAlterarLimite": permiteAlterarLimite,
            "permiteEmitirNovaViaCartao": permiteEmitirNovaViaCartao,
            "permiteFazerTransferencia": permiteFazerTransferencia,
            "permiteReceberTransferencia": permiteReceberTransferencia,
            "permiteCriarAcordoCobranca": permiteCriarAcordoCobranca,
            "permiteAtribuirComoBloqueio": permiteAtribuirComoBloqueio,
            "permiteDesbloquear": permiteDesbloquear,
            "permiteAtribuirComoCancelamento": permiteAtribuirComoCancelamento
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusContaResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do status impress\u00C3\u00A3o (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET26(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?, completion: ((data: PageStatusImpressaoResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET26WithRequestBuilder(sort: sort, page: page, limit: limit, id: id, nome: nome).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
     
     - GET /api/status-impressoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
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
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do status impress\u00C3\u00A3o (optional)

     - returns: RequestBuilder<PageStatusImpressaoResponse> 
     */
    public class func listarUsingGET26WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, nome: String?) -> RequestBuilder<PageStatusImpressaoResponse> {
        let path = "/api/status-impressoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "nome": nome
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusImpressaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}