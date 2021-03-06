//
// GlobaltagtipochaveAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagtipochaveAPI: APIBase {
    /**
     
     {{{tipo_chave_resource_listar_tipos_chaves}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter id: (query) {{{tipo_chave_request_id_value}}} (optional)
     - parameter descricao: (query) {{{tipo_chave_request_descricao_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarTipoChaveUsingGET(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, descricao: String?, completion: ((data: PageTipoChaveResponse?, error: ErrorType?) -> Void)) {
        listarTipoChaveUsingGETWithRequestBuilder(sort: sort, page: page, limit: limit, id: id, descricao: descricao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{tipo_chave_resource_listar_tipos_chaves}}}
     
     - GET /api/tipos-chaves
     - {{{tipo_chave_resource_listar_tipos_chaves_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
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
     - parameter id: (query) {{{tipo_chave_request_id_value}}} (optional)
     - parameter descricao: (query) {{{tipo_chave_request_descricao_value}}} (optional)

     - returns: RequestBuilder<PageTipoChaveResponse> 
     */
    public class func listarTipoChaveUsingGETWithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, descricao: String?) -> RequestBuilder<PageTipoChaveResponse> {
        let path = "/api/tipos-chaves"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "descricao": descricao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageTipoChaveResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
