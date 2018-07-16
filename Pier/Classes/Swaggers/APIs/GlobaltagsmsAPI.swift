//
// GlobaltagsmsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagsmsAPI: APIBase {
    /**
     
     {{{sms_resource_listar_sms}}}
     
     - parameter idConta: (query) {{{sms_envio_request_id_conta_value}}} 
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter dataInicio: (query) {{{sms_envio_request_data_inicio_value}}} (optional)
     - parameter dataFim: (query) {{{sms_envio_request_data_fim_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarSMSUsingGET1(idConta idConta: Int, sort: [String]?, page: Int?, limit: Int?, dataInicio: String?, dataFim: String?, completion: ((data: PageSMSEnvioResponse?, error: ErrorType?) -> Void)) {
        listarSMSUsingGET1WithRequestBuilder(idConta: idConta, sort: sort, page: page, limit: limit, dataInicio: dataInicio, dataFim: dataFim).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{sms_resource_listar_sms}}}
     
     - GET /api/sms
     - {{{sms_resource_listar_sms_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "quantidadeTentativasEnvio" : 123,
    "conteudo" : "aeiou",
    "idConta" : 123456789,
    "cpf" : "aeiou",
    "celular" : "aeiou",
    "dataInclusao" : "aeiou",
    "id" : 123456789,
    "status" : "aeiou"
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
     
     - parameter idConta: (query) {{{sms_envio_request_id_conta_value}}} 
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter dataInicio: (query) {{{sms_envio_request_data_inicio_value}}} (optional)
     - parameter dataFim: (query) {{{sms_envio_request_data_fim_value}}} (optional)

     - returns: RequestBuilder<PageSMSEnvioResponse> 
     */
    public class func listarSMSUsingGET1WithRequestBuilder(idConta idConta: Int, sort: [String]?, page: Int?, limit: Int?, dataInicio: String?, dataFim: String?) -> RequestBuilder<PageSMSEnvioResponse> {
        let path = "/api/sms"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idConta": idConta,
            "dataInicio": dataInicio,
            "dataFim": dataFim
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageSMSEnvioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
