//
// GlobaltagdocumentoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagdocumentoAPI: APIBase {
    /**
     
     {{{tipo_template_resource_alterar}}}
     
     - parameter id: (path) {{{tipo_template_resource_alterar_param_id}}} 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT21(id id: Int, persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT21WithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{tipo_template_resource_alterar}}}
     
     - PUT /api/tipos-templates/{id}
     - {{{tipo_template_resource_alterar_notes}}}
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) {{{tipo_template_resource_alterar_param_id}}} 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func alterarUsingPUT21WithRequestBuilder(id id: Int, persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_template_resource_atualizar}}}
     
     - parameter id: (path) {{{documento_template_resource_atualizar_param_id}}} 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT3(id id: Int, persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUT3WithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_template_resource_atualizar}}}
     
     - PUT /api/templates-documentos/{id}
     - {{{documento_template_resource_atualizar_notes}}}
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) {{{documento_template_resource_atualizar_param_id}}} 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func atualizarUsingPUT3WithRequestBuilder(id id: Int, persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_resource_consultar}}}
     
     - parameter id: (path) {{{documento_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET16(id id: Int, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET16WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_resource_consultar}}}
     
     - GET /api/documentos/{id}
     - {{{documento_resource_consultar_notes}}}
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
     
     - parameter id: (path) {{{documento_resource_consultar_param_id}}} 

     - returns: RequestBuilder<DocumentoDetalhadoResponse> 
     */
    public class func consultarUsingGET16WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoDetalhadoResponse> {
        var path = "/api/documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_template_resource_consultar}}}
     
     - parameter id: (path) {{{documento_template_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET17(id id: Int, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET17WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_template_resource_consultar}}}
     
     - GET /api/templates-documentos/{id}
     - {{{documento_template_resource_consultar_notes}}}
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) {{{documento_template_resource_consultar_param_id}}} 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func consultarUsingGET17WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{tipo_template_resource_consultar}}}
     
     - parameter id: (path) {{{tipo_template_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET46(id id: Int, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET46WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{tipo_template_resource_consultar}}}
     
     - GET /api/tipos-templates/{id}
     - {{{tipo_template_resource_consultar_notes}}}
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) {{{tipo_template_resource_consultar_param_id}}} 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func consultarUsingGET46WithRequestBuilder(id id: Int) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_resource_integrar}}}
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func integrarUsingPOST1(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest, completion: ((data: DocumentoIntegracaoResponse?, error: ErrorType?) -> Void)) {
        integrarUsingPOST1WithRequestBuilder(integrarDocumentoRequest: integrarDocumentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_resource_integrar}}}
     
     - POST /api/documentos/integrar
     - {{{documento_resource_integrar_notes}}}
     - examples: [{contentType=application/json, example={
  "idTemplate" : 123456789,
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 

     - returns: RequestBuilder<DocumentoIntegracaoResponse> 
     */
    public class func integrarUsingPOST1WithRequestBuilder(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest) -> RequestBuilder<DocumentoIntegracaoResponse> {
        let path = "/api/documentos/integrar"
        let URLString = PierAPI.basePath + path
        
        let parameters = integrarDocumentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoIntegracaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idTemplateDocumento: (query) {{{documento_request_id_template_documento_value}}} (optional)
     - parameter nome: (query) {{{documento_request_nome_value}}} (optional)
     - parameter extensao: (query) {{{documento_request_extensao_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET21(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?, completion: ((data: PageDocumentoResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET21WithRequestBuilder(sort: sort, page: page, limit: limit, idTemplateDocumento: idTemplateDocumento, nome: nome, extensao: extensao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_resource_listar}}}
     
     - GET /api/documentos
     - {{{documento_resource_listar_notes}}}
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
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idTemplateDocumento: (query) {{{documento_request_id_template_documento_value}}} (optional)
     - parameter nome: (query) {{{documento_request_nome_value}}} (optional)
     - parameter extensao: (query) {{{documento_request_extensao_value}}} (optional)

     - returns: RequestBuilder<PageDocumentoResponse> 
     */
    public class func listarUsingGET21WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?) -> RequestBuilder<PageDocumentoResponse> {
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
     
     {{{documento_template_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idTipoTemplate: (query) {{{documento_template_request_id_tipo_template_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET22(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?, completion: ((data: PageDocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET22WithRequestBuilder(sort: sort, page: page, limit: limit, idTipoTemplate: idTipoTemplate).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_template_resource_listar}}}
     
     - GET /api/templates-documentos
     - {{{documento_template_resource_listar_notes}}}
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
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idTipoTemplate: (query) {{{documento_template_request_id_tipo_template_value}}} (optional)

     - returns: RequestBuilder<PageDocumentoTemplateResponse> 
     */
    public class func listarUsingGET22WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?) -> RequestBuilder<PageDocumentoTemplateResponse> {
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
     
     {{{tipo_template_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET57(sort sort: [String]?, page: Int?, limit: Int?, completion: ((data: PageTipoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET57WithRequestBuilder(sort: sort, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{tipo_template_resource_listar}}}
     
     - GET /api/tipos-templates
     - {{{tipo_template_resource_listar_notes}}}
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
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)

     - returns: RequestBuilder<PageTipoTemplateResponse> 
     */
    public class func listarUsingGET57WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?) -> RequestBuilder<PageTipoTemplateResponse> {
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
     
     {{{documento_resource_salvar}}}
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST11(persist persist: DocumentoParametrosRequest, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST11WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_resource_salvar}}}
     
     - POST /api/documentos
     - {{{documento_resource_salvar_notes}}}
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
    public class func salvarUsingPOST11WithRequestBuilder(persist persist: DocumentoParametrosRequest) -> RequestBuilder<DocumentoDetalhadoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{documento_template_resource_salvar}}}
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST12(persist persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST12WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{documento_template_resource_salvar}}}
     
     - POST /api/templates-documentos
     - {{{documento_template_resource_salvar_notes}}}
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func salvarUsingPOST12WithRequestBuilder(persist persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{tipo_template_resource_salvar}}}
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST31(persist persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST31WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{tipo_template_resource_salvar}}}
     
     - POST /api/tipos-templates
     - {{{tipo_template_resource_salvar_notes}}}
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func salvarUsingPOST31WithRequestBuilder(persist persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        let path = "/api/tipos-templates"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}