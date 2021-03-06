//
// GlobaltagajustefinanceiroAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagajustefinanceiroAPI: APIBase {
    /**
     
     {{{ajuste_financeiro_resource_ajustar_conta}}}
     
     - parameter idTipoAjuste: (query) {{{ajuste_financeiro_persist_id_tipo_ajuste_value}}} 
     - parameter dataAjuste: (query) {{{ajuste_financeiro_persist_data_ajuste_value}}} 
     - parameter valorAjuste: (query) {{{ajuste_financeiro_persist_valor_ajuste_value}}} 
     - parameter idConta: (query) {{{ajuste_financeiro_persist_id_conta_value}}} 
     - parameter identificadorExterno: (query) {{{ajuste_financeiro_persist_identificador_externo_value}}} (optional)
     - parameter idTransacaoOriginal: (query) {{{ajuste_persist_id_transacao_original}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func ajustarContaUsingPOST(idTipoAjuste idTipoAjuste: Int, dataAjuste: String, valorAjuste: Double, idConta: Int, identificadorExterno: String?, idTransacaoOriginal: Int?, completion: ((data: AjusteFinanceiroResponse?, error: ErrorType?) -> Void)) {
        ajustarContaUsingPOSTWithRequestBuilder(idTipoAjuste: idTipoAjuste, dataAjuste: dataAjuste, valorAjuste: valorAjuste, idConta: idConta, identificadorExterno: identificadorExterno, idTransacaoOriginal: idTransacaoOriginal).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{ajuste_financeiro_resource_ajustar_conta}}}
     
     - POST /api/ajustes-financeiros
     - {{{ajuste_financeiro_resource_ajustar_conta_notes}}}
     - examples: [{contentType=application/json, example={
  "identificadorExterno" : "aeiou",
  "idConta" : 123456789,
  "dataAjuste" : "aeiou",
  "valor" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "idTipoAjuste" : 123456789,
  "status" : 123456789
}}]
     
     - parameter idTipoAjuste: (query) {{{ajuste_financeiro_persist_id_tipo_ajuste_value}}} 
     - parameter dataAjuste: (query) {{{ajuste_financeiro_persist_data_ajuste_value}}} 
     - parameter valorAjuste: (query) {{{ajuste_financeiro_persist_valor_ajuste_value}}} 
     - parameter idConta: (query) {{{ajuste_financeiro_persist_id_conta_value}}} 
     - parameter identificadorExterno: (query) {{{ajuste_financeiro_persist_identificador_externo_value}}} (optional)
     - parameter idTransacaoOriginal: (query) {{{ajuste_persist_id_transacao_original}}} (optional)

     - returns: RequestBuilder<AjusteFinanceiroResponse> 
     */
    public class func ajustarContaUsingPOSTWithRequestBuilder(idTipoAjuste idTipoAjuste: Int, dataAjuste: String, valorAjuste: Double, idConta: Int, identificadorExterno: String?, idTransacaoOriginal: Int?) -> RequestBuilder<AjusteFinanceiroResponse> {
        let path = "/api/ajustes-financeiros"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "idTipoAjuste": idTipoAjuste,
            "dataAjuste": dataAjuste,
            "valorAjuste": valorAjuste,
            "identificadorExterno": identificadorExterno,
            "idConta": idConta,
            "idTransacaoOriginal": idTransacaoOriginal
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AjusteFinanceiroResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     {{{ajuste_financeiro_resource_consultar}}}
     
     - parameter id: (path) {{{ajuste_financeiro_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET3(id id: Int, completion: ((data: AjusteFinanceiroResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET3WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{ajuste_financeiro_resource_consultar}}}
     
     - GET /api/ajustes-financeiros/{id}
     - {{{ajuste_financeiro_resource_consultar_notes}}}
     - examples: [{contentType=application/json, example={
  "identificadorExterno" : "aeiou",
  "idConta" : 123456789,
  "dataAjuste" : "aeiou",
  "valor" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "idTipoAjuste" : 123456789,
  "status" : 123456789
}}]
     
     - parameter id: (path) {{{ajuste_financeiro_resource_consultar_param_id}}} 

     - returns: RequestBuilder<AjusteFinanceiroResponse> 
     */
    public class func consultarUsingGET3WithRequestBuilder(id id: Int) -> RequestBuilder<AjusteFinanceiroResponse> {
        var path = "/api/ajustes-financeiros/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AjusteFinanceiroResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{ajuste_financeiro_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idTipoAjuste: (query) {{{ajuste_request_id_tipo_ajuste_value}}} (optional)
     - parameter dataAjuste: (query) {{{ajuste_request_data_ajuste_value}}} (optional)
     - parameter valorAjuste: (query) {{{ajuste_request_valor_ajuste_value}}} (optional)
     - parameter identificadorExterno: (query) {{{ajuste_request_identificador_externo_value}}} (optional)
     - parameter idConta: (query) {{{ajuste_request_id_conta_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET2(sort sort: [String]?, page: Int?, limit: Int?, idTipoAjuste: Int?, dataAjuste: String?, valorAjuste: Double?, identificadorExterno: String?, idConta: Int?, completion: ((data: PageAjusteResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET2WithRequestBuilder(sort: sort, page: page, limit: limit, idTipoAjuste: idTipoAjuste, dataAjuste: dataAjuste, valorAjuste: valorAjuste, identificadorExterno: identificadorExterno, idConta: idConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{ajuste_financeiro_resource_listar}}}
     
     - GET /api/ajustes-financeiros
     - {{{ajuste_financeiro_resource_listar_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "identificadorExterno" : "aeiou",
    "idConta" : 123456789,
    "dataAjuste" : "aeiou",
    "valor" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123456789,
    "idTipoAjuste" : 123456789,
    "status" : 123456789
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
     - parameter idTipoAjuste: (query) {{{ajuste_request_id_tipo_ajuste_value}}} (optional)
     - parameter dataAjuste: (query) {{{ajuste_request_data_ajuste_value}}} (optional)
     - parameter valorAjuste: (query) {{{ajuste_request_valor_ajuste_value}}} (optional)
     - parameter identificadorExterno: (query) {{{ajuste_request_identificador_externo_value}}} (optional)
     - parameter idConta: (query) {{{ajuste_request_id_conta_value}}} (optional)

     - returns: RequestBuilder<PageAjusteResponse> 
     */
    public class func listarUsingGET2WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTipoAjuste: Int?, dataAjuste: String?, valorAjuste: Double?, identificadorExterno: String?, idConta: Int?) -> RequestBuilder<PageAjusteResponse> {
        let path = "/api/ajustes-financeiros"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idTipoAjuste": idTipoAjuste,
            "dataAjuste": dataAjuste,
            "valorAjuste": valorAjuste,
            "identificadorExterno": identificadorExterno,
            "idConta": idConta
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageAjusteResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
