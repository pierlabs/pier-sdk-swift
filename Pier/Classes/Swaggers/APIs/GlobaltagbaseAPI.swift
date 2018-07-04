//
// GlobaltagbaseAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagbaseAPI: APIBase {
    /**
     
     {{{base_resource_limpar}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func limparUsingPOST(completion: ((data: BodyAccessToken?, error: ErrorType?) -> Void)) {
        limparUsingPOSTWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{base_resource_limpar}}}
     
     - POST /api/bases/limpar
     - {{{base_resource_limpar_notes}}}
     - examples: [{contentType=application/json, example={
  "AuthToken" : {
    "owner" : "aeiou",
    "code" : "aeiou",
    "id" : 123,
    "extraInfo" : {
      "idEmissor" : 123
    },
    "status" : "aeiou"
  },
  "action" : "aeiou",
  "user" : "aeiou"
}}]

     - returns: RequestBuilder<BodyAccessToken> 
     */
    public class func limparUsingPOSTWithRequestBuilder() -> RequestBuilder<BodyAccessToken> {
        let path = "/api/bases/limpar"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BodyAccessToken>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}