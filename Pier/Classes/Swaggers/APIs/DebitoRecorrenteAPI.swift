//
// DebitoRecorrenteAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DebitoRecorrenteAPI: APIBase {
    /**
     
     Lista os d\u00C3\u00A9bitos recorrentes de uma Conta
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id) 
     - parameter idTipoDebitoRecorrente: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id) (optional)
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter dataHoraInicio: (query) Data inicio do d\u00C3\u00A9bito recorrente. (optional)
     - parameter dataHoraFim: (query) Data fim do d\u00C3\u00A9bito recorrente. (optional)
     - parameter ativo: (query) Identifica se o d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)
     - parameter dataHoraUltimoPagamento: (query) Data do \u00C3\u00BAltimo pagamento efetuado. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET15(idConta idConta: Int, idTipoDebitoRecorrente: Int?, sort: [String]?, page: Int?, limit: Int?, dataHoraInicio: String?, dataHoraFim: String?, ativo: Bool?, dataHoraUltimoPagamento: String?, completion: ((data: PageTipoDebitoRecorrenteResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET15WithRequestBuilder(idConta: idConta, idTipoDebitoRecorrente: idTipoDebitoRecorrente, sort: sort, page: page, limit: limit, dataHoraInicio: dataHoraInicio, dataHoraFim: dataHoraFim, ativo: ativo, dataHoraUltimoPagamento: dataHoraUltimoPagamento).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os d\u00C3\u00A9bitos recorrentes de uma Conta
     
     - GET /api/debitos-recorrentes
     - A entidade D\u00C3\u00A9bito Recorrente trata dos registros contratados por um determinado cliente (idConta) onde a cobran\u00C3\u00A7a dele se d\u00C3\u00A1 de forma cont\u00C3\u00ADnua, consistindo em uma \u00E2\u0080\u009Cassinatura\u00E2\u0080\u009D ou pagamento de mensalidades. Isso significa que, enquanto o servi\u00C3\u00A7o continuar a ser prestado, o cliente dever\u00C3\u00A1 continuar realizando os pagamentos. A determina\u00C3\u00A7\u00C3\u00A3o de quanto tempo essa rela\u00C3\u00A7\u00C3\u00A3o ir\u00C3\u00A1 durar \u00C3\u00A9 feita em contrato. Na maioria das vezes, existe um per\u00C3\u00ADodo m\u00C3\u00ADnimo e, caso o servi\u00C3\u00A7o seja cancelado ou o pagamento n\u00C3\u00A3o seja realizado, o status do D\u00C3\u00A9bito Recorrente ter\u00C3\u00A1 a FlagAtivo com valor false. Assim, este m\u00C3\u00A9todo lista todas as opera\u00C3\u00A7\u00C3\u00B5es de D\u00C3\u00A9bitos Recorrentes que um determinado idConta j\u00C3\u00A1 contratou, esteja ele ativo ou n\u00C3\u00A3o.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "valor" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123456789,
    "flagAtivo" : false,
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
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id) 
     - parameter idTipoDebitoRecorrente: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id) (optional)
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter dataHoraInicio: (query) Data inicio do d\u00C3\u00A9bito recorrente. (optional)
     - parameter dataHoraFim: (query) Data fim do d\u00C3\u00A9bito recorrente. (optional)
     - parameter ativo: (query) Identifica se o d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)
     - parameter dataHoraUltimoPagamento: (query) Data do \u00C3\u00BAltimo pagamento efetuado. (optional)

     - returns: RequestBuilder<PageTipoDebitoRecorrenteResponse> 
     */
    public class func listarUsingGET15WithRequestBuilder(idConta idConta: Int, idTipoDebitoRecorrente: Int?, sort: [String]?, page: Int?, limit: Int?, dataHoraInicio: String?, dataHoraFim: String?, ativo: Bool?, dataHoraUltimoPagamento: String?) -> RequestBuilder<PageTipoDebitoRecorrenteResponse> {
        let path = "/api/debitos-recorrentes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "idConta": idConta,
            "idTipoDebitoRecorrente": idTipoDebitoRecorrente,
            "sort": sort,
            "page": page,
            "limit": limit,
            "dataHoraInicio": dataHoraInicio,
            "dataHoraFim": dataHoraFim,
            "ativo": ativo,
            "dataHoraUltimoPagamento": dataHoraUltimoPagamento
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageTipoDebitoRecorrenteResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Listar Tipos Debitos Recorrentes
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter id: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id). (optional)
     - parameter descricao: (query) Descri\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente. (optional)
     - parameter valor: (query) Valor do tipo de d\u00C3\u00A9bito recorrente. (optional)
     - parameter flagAtivo: (query) Flag que identifica se o tipo d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET41(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, descricao: String?, valor: Double?, flagAtivo: Bool?, completion: ((data: PageTipoDebitoRecorrenteResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET41WithRequestBuilder(sort: sort, page: page, limit: limit, id: id, descricao: descricao, valor: valor, flagAtivo: flagAtivo).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Listar Tipos Debitos Recorrentes
     
     - GET /api/tipos-debitos-recorrentes
     - Para os emissores que utilizam a entidade Debitos Recorrentes precisam previamente solicitar a Conductor o cadastro de quais Tipos eles poder\u00C3\u00A3o comercializar. Por isso, este recurso tem como objetivo apresentar todos os Tipos de D\u00C3\u00A9bitos Recorrentes que est\u00C3\u00A3o cadastrados para um determinado Emissor, independente do status dele.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "valor" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123456789,
    "flagAtivo" : false,
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
     - parameter id: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id). (optional)
     - parameter descricao: (query) Descri\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente. (optional)
     - parameter valor: (query) Valor do tipo de d\u00C3\u00A9bito recorrente. (optional)
     - parameter flagAtivo: (query) Flag que identifica se o tipo d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)

     - returns: RequestBuilder<PageTipoDebitoRecorrenteResponse> 
     */
    public class func listarUsingGET41WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: Int?, descricao: String?, valor: Double?, flagAtivo: Bool?) -> RequestBuilder<PageTipoDebitoRecorrenteResponse> {
        let path = "/api/tipos-debitos-recorrentes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "descricao": descricao,
            "valor": valor,
            "flagAtivo": flagAtivo
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageTipoDebitoRecorrenteResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
