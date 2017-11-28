//
// DocumentoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DocumentoAPI: APIBase {
    /**
     
     Altera o tipo de template
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT15(id id: Int, persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT15WithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Altera o tipo de template
     
     - PUT /api/tipos-templates/{id}
     - Esse recurso permite alterar os dados do tipo de template.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func alterarUsingPUT15WithRequestBuilder(id id: Int, persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Atualizar templates dos documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT2(id id: Int, persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUT2WithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualizar templates dos documentos
     
     - PUT /api/templates-documentos/{id}
     - Esse recurso permite atualizar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func atualizarUsingPUT2WithRequestBuilder(id id: Int, persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consulta documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET11(id id: Int, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET11WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consulta documentos
     
     - GET /api/documentos/{id}
     - Esse recurso permite consultar um documento espec\u00C3\u00ADfico a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "extensao" : "aeiou",
  "idTemplateDocumento" : 123456789,
  "documentoDetalhes" : [ {
    "conteudo" : "aeiou",
    "propriedade" : "aeiou",
    "id" : 123456789
  } ],
  "documento" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento (id). 

     - returns: RequestBuilder<DocumentoDetalhadoResponse> 
     */
    public class func consultarUsingGET11WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoDetalhadoResponse> {
        var path = "/api/documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consultar templates dos documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET12(id id: Int, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET12WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar templates dos documentos
     
     - GET /api/templates-documentos/{id}
     - Esse recurso permite consultar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func consultarUsingGET12WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consultar tipo de template
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET33(id id: Int, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET33WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar tipo de template
     
     - GET /api/tipos-templates/{id}
     - Esse recurso permite consultar um determinado tipo de template a partir do id recebido e do id do emissor.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func consultarUsingGET33WithRequestBuilder(id id: Int) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Integra um arquivo a reposit\u00C3\u00B3rios remotos.
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func integrarUsingPOST(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest, completion: ((data: DocumentoIntegracaoResponse?, error: ErrorType?) -> Void)) {
        integrarUsingPOSTWithRequestBuilder(integrarDocumentoRequest: integrarDocumentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Integra um arquivo a reposit\u00C3\u00B3rios remotos.
     
     - POST /api/documentos/integrar
     - Este recurso permite integrar um documento ao reposit\u00C3\u00B3rio pre-configurado.
     - examples: [{contentType=application/json, example={
  "idTemplate" : 123456789,
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 

     - returns: RequestBuilder<DocumentoIntegracaoResponse> 
     */
    public class func integrarUsingPOSTWithRequestBuilder(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest) -> RequestBuilder<DocumentoIntegracaoResponse> {
        let path = "/api/documentos/integrar"
        let URLString = PierAPI.basePath + path
        
        let parameters = integrarDocumentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoIntegracaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista documentos
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTemplateDocumento: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do template do documento. (optional)
     - parameter nome: (query) Nome do documento. (optional)
     - parameter extensao: (query) Extensao do documento. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET15(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?, completion: ((data: PageDocumentoResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET15WithRequestBuilder(sort: sort, page: page, limit: limit, idTemplateDocumento: idTemplateDocumento, nome: nome, extensao: extensao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista documentos
     
     - GET /api/documentos
     - Esse recurso permite listar documentos.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "extensao" : "aeiou",
    "idTemplateDocumento" : 123456789,
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
     - parameter idTemplateDocumento: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do template do documento. (optional)
     - parameter nome: (query) Nome do documento. (optional)
     - parameter extensao: (query) Extensao do documento. (optional)

     - returns: RequestBuilder<PageDocumentoResponse> 
     */
    public class func listarUsingGET15WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?) -> RequestBuilder<PageDocumentoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idTemplateDocumento": idTemplateDocumento,
            "nome": nome,
            "extensao": extensao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageDocumentoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os templates dos documentos
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTipoTemplate: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do template. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET16(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?, completion: ((data: PageDocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET16WithRequestBuilder(sort: sort, page: page, limit: limit, idTipoTemplate: idTipoTemplate).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os templates dos documentos
     
     - GET /api/templates-documentos
     - Esse recurso permite listar os templates dos documentos.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "idTipoTemplate" : 123456789,
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
     - parameter idTipoTemplate: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do template. (optional)

     - returns: RequestBuilder<PageDocumentoTemplateResponse> 
     */
    public class func listarUsingGET16WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?) -> RequestBuilder<PageDocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idTipoTemplate": idTipoTemplate
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageDocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os tipos de templates
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET38(sort sort: [String]?, page: Int?, limit: Int?, completion: ((data: PageTipoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET38WithRequestBuilder(sort: sort, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os tipos de templates
     
     - GET /api/tipos-templates
     - Esse recurso permite listar os tipos de templates associados ao emissor.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "sigla" : "aeiou",
    "nome" : "aeiou",
    "id" : 123456789,
    "descricao" : "aeiou"
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

     - returns: RequestBuilder<PageTipoTemplateResponse> 
     */
    public class func listarUsingGET38WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?) -> RequestBuilder<PageTipoTemplateResponse> {
        let path = "/api/tipos-templates"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageTipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Cadastra os templates dos documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST10(persist persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST10WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os templates dos documentos
     
     - POST /api/templates-documentos
     - Esse recurso permite cadastrar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func salvarUsingPOST10WithRequestBuilder(persist persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra os tipos de templates
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST22(persist persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST22WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os tipos de templates
     
     - POST /api/tipos-templates
     - Esse recurso permite cadastrar tipos de templates.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func salvarUsingPOST22WithRequestBuilder(persist persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        let path = "/api/tipos-templates"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST9(persist persist: DocumentoParametrosRequest, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST9WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra documentos
     
     - POST /api/documentos
     - Esse recurso permite cadastrar documentos.
     - examples: [{contentType=application/json, example={
  "extensao" : "aeiou",
  "idTemplateDocumento" : 123456789,
  "documentoDetalhes" : [ {
    "conteudo" : "aeiou",
    "propriedade" : "aeiou",
    "id" : 123456789
  } ],
  "documento" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoDetalhadoResponse> 
     */
    public class func salvarUsingPOST9WithRequestBuilder(persist persist: DocumentoParametrosRequest) -> RequestBuilder<DocumentoDetalhadoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
