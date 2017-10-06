//
// AntecipacaoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AntecipacaoAPI: APIBase {
    /**
     
     Configura a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
     
     - parameter id: (path) Id Produto 
     - parameter taxaAntecipacaoRequest: (body) taxaAntecipacaoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configurarTaxaAntecipacaoUsingPOST(id id: Int, taxaAntecipacaoRequest: TaxaAntecipacaoRequest, completion: ((data: ParametroProdutoResponse?, error: ErrorType?) -> Void)) {
        configurarTaxaAntecipacaoUsingPOSTWithRequestBuilder(id: id, taxaAntecipacaoRequest: taxaAntecipacaoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Configura a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
     
     - POST /api/produtos/{id}/configurar-taxa-antecipacao
     - Este recurso permite configurar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "idProduto" : 123456789,
  "tipoOrigemTransacao" : "aeiou",
  "valorParametro" : 1.3579000000000001069366817318950779736042022705078125,
  "dataValidade" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) Id Produto 
     - parameter taxaAntecipacaoRequest: (body) taxaAntecipacaoRequest 

     - returns: RequestBuilder<ParametroProdutoResponse> 
     */
    public class func configurarTaxaAntecipacaoUsingPOSTWithRequestBuilder(id id: Int, taxaAntecipacaoRequest: TaxaAntecipacaoRequest) -> RequestBuilder<ParametroProdutoResponse> {
        var path = "/api/produtos/{id}/configurar-taxa-antecipacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = taxaAntecipacaoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ParametroProdutoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consulta a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
     
     - parameter id: (path) Id Produto 
     - parameter tipoTransacao: (query) Tipo da Transa\u00C3\u00A7\u00C3\u00A3o (ON-US ou OFF-US) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarTaxaAntecipacaoUsingGET(id id: Int, tipoTransacao: String, completion: ((data: ParametroProdutoResponse?, error: ErrorType?) -> Void)) {
        consultarTaxaAntecipacaoUsingGETWithRequestBuilder(id: id, tipoTransacao: tipoTransacao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consulta a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
     
     - GET /api/produtos/{id}/consultar-taxa-antecipacao
     - Este recurso permite consultar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "idProduto" : 123456789,
  "tipoOrigemTransacao" : "aeiou",
  "valorParametro" : 1.3579000000000001069366817318950779736042022705078125,
  "dataValidade" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) Id Produto 
     - parameter tipoTransacao: (query) Tipo da Transa\u00C3\u00A7\u00C3\u00A3o (ON-US ou OFF-US) 

     - returns: RequestBuilder<ParametroProdutoResponse> 
     */
    public class func consultarTaxaAntecipacaoUsingGETWithRequestBuilder(id id: Int, tipoTransacao: String) -> RequestBuilder<ParametroProdutoResponse> {
        var path = "/api/produtos/{id}/consultar-taxa-antecipacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "tipoTransacao": tipoTransacao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ParametroProdutoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Faz a efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o
     
     - parameter idConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta. 
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento. 
     - parameter quantidadeParcelas: (query) Quantidade de parcelas para serem antecipadas. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func efetivarAntecipacaoUsingPOST(idConta idConta: Int, id: Int, quantidadeParcelas: Int, completion: ((data: AntecipacaoResponse?, error: ErrorType?) -> Void)) {
        efetivarAntecipacaoUsingPOSTWithRequestBuilder(idConta: idConta, id: id, quantidadeParcelas: quantidadeParcelas).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Faz a efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o
     
     - POST /api/compras-antecipaveis/{id}/efetivar-antecipacao
     - M\u00C3\u00A9todo responsavel pela efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o, cujo desconto \u00C3\u00A9 calculado baseado na data da \u00C3\u00BAltima parcela em aberto.
     - examples: [{contentType=application/json, example={
  "valorParcela" : 1.3579000000000001069366817318950779736042022705078125,
  "idConta" : 123456789,
  "valorDescontoTotal" : 1.3579000000000001069366817318950779736042022705078125,
  "idCompra" : 123456789,
  "taxaDesconto" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "quantidadeParcelasTotal" : 123456789,
  "valorTotalComDesconto" : 1.3579000000000001069366817318950779736042022705078125,
  "quantidadeParcelasAntecipadas" : 123456789
}}]
     
     - parameter idConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta. 
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento. 
     - parameter quantidadeParcelas: (query) Quantidade de parcelas para serem antecipadas. 

     - returns: RequestBuilder<AntecipacaoResponse> 
     */
    public class func efetivarAntecipacaoUsingPOSTWithRequestBuilder(idConta idConta: Int, id: Int, quantidadeParcelas: Int) -> RequestBuilder<AntecipacaoResponse> {
        var path = "/api/compras-antecipaveis/{id}/efetivar-antecipacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "idConta": idConta,
            "quantidadeParcelas": quantidadeParcelas
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AntecipacaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Listar compras com parcelas antecip\u00C3\u00A1veis
     
     - parameter idConta: (query) C\u00C3\u00B3digo identificador da conta da Compra. 
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idCompra: (query) C\u00C3\u00B3digo identificador da Compra. (optional)
     - parameter parcelada: (query) Indica se a compra \u00C3\u00A9 parcelada. (optional)
     - parameter juros: (query) Indica se a compra \u00C3\u00A9 com ou sem juros. (optional)
     - parameter tipoOrigemTransacao: (query) Indica se a compra \u00C3\u00A9 ON-US ou OFF-US (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET8(idConta idConta: Int, sort: [String]?, page: Int?, limit: Int?, idCompra: Int?, parcelada: Bool?, juros: Bool?, tipoOrigemTransacao: String?, completion: ((data: PageCompraResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET8WithRequestBuilder(idConta: idConta, sort: sort, page: page, limit: limit, idCompra: idCompra, parcelada: parcelada, juros: juros, tipoOrigemTransacao: tipoOrigemTransacao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Listar compras com parcelas antecip\u00C3\u00A1veis
     
     - GET /api/compras-antecipaveis
     - Lista as compras antecip\u00C3\u00A1veis de uma conta.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "cidade" : "aeiou",
    "tipoOrigemTransacao" : "aeiou",
    "idConta" : 123456789,
    "numeroParcelas" : 123,
    "valorTotalCompra" : 1.3579000000000001069366817318950779736042022705078125,
    "idGrupoMCC" : 123456789,
    "latitude" : "aeiou",
    "primeiraParcela" : 1.3579000000000001069366817318950779736042022705078125,
    "mcc" : 123456789,
    "dataCompra" : "aeiou",
    "pais" : "aeiou",
    "descricaoGrupoMCC" : "aeiou",
    "descricaoProduto" : "aeiou",
    "nomeEstabelecimento" : "aeiou",
    "uf" : "aeiou",
    "valorParcela" : 1.3579000000000001069366817318950779736042022705078125,
    "cartao" : "aeiou",
    "idProduto" : 123456789,
    "idCompra" : 123456789,
    "numeroParcelasAntecipaveis" : 123,
    "nomePortadorCartao" : "aeiou",
    "status" : "aeiou",
    "longitude" : "aeiou"
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
     
     - parameter idConta: (query) C\u00C3\u00B3digo identificador da conta da Compra. 
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idCompra: (query) C\u00C3\u00B3digo identificador da Compra. (optional)
     - parameter parcelada: (query) Indica se a compra \u00C3\u00A9 parcelada. (optional)
     - parameter juros: (query) Indica se a compra \u00C3\u00A9 com ou sem juros. (optional)
     - parameter tipoOrigemTransacao: (query) Indica se a compra \u00C3\u00A9 ON-US ou OFF-US (optional)

     - returns: RequestBuilder<PageCompraResponse> 
     */
    public class func listarUsingGET8WithRequestBuilder(idConta idConta: Int, sort: [String]?, page: Int?, limit: Int?, idCompra: Int?, parcelada: Bool?, juros: Bool?, tipoOrigemTransacao: String?) -> RequestBuilder<PageCompraResponse> {
        let path = "/api/compras-antecipaveis"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idCompra": idCompra,
            "idConta": idConta,
            "parcelada": parcelada,
            "juros": juros,
            "tipoOrigemTransacao": tipoOrigemTransacao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageCompraResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Simular antecipa\u00C3\u00A7\u00C3\u00A3o de parcelas
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta. 
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func simularAntecipacaoUsingGET(idConta idConta: Int, id: Int, completion: ((data: AntecipacaoSimuladaResponse?, error: ErrorType?) -> Void)) {
        simularAntecipacaoUsingGETWithRequestBuilder(idConta: idConta, id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Simular antecipa\u00C3\u00A7\u00C3\u00A3o de parcelas
     
     - GET /api/compras-antecipaveis/{id}/simular-antecipacao
     - Simula a antecipa\u00C3\u00A7\u00C3\u00A3o de parcelas de um evento, listando todos os planos de parcelamento dispon\u00C3\u00ADveis, cujo desconto \u00C3\u00A9 calculado baseado na data da \u00C3\u00BAltima parcela em aberto.
     - examples: [{contentType=application/json, example={
  "quantidadeParcelasAntecipaveis" : 123,
  "valorParcela" : 1.3579000000000001069366817318950779736042022705078125,
  "idConta" : 123456789,
  "dataHoraSimulacao" : "aeiou",
  "idAntecipacaoSimulada" : 123456789,
  "idCompra" : 123456789,
  "idTipoTransacao" : 123456789,
  "detalhes" : [ {
    "valorDesconto" : 1.3579000000000001069366817318950779736042022705078125,
    "valorParcelasDesconto" : 1.3579000000000001069366817318950779736042022705078125,
    "valorParcelas" : 1.3579000000000001069366817318950779736042022705078125,
    "quantidadeParcelas" : 123
  } ],
  "taxaAntecipacaoAno" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta. 
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento. 

     - returns: RequestBuilder<AntecipacaoSimuladaResponse> 
     */
    public class func simularAntecipacaoUsingGETWithRequestBuilder(idConta idConta: Int, id: Int) -> RequestBuilder<AntecipacaoSimuladaResponse> {
        var path = "/api/compras-antecipaveis/{id}/simular-antecipacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "idConta": idConta
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AntecipacaoSimuladaResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
