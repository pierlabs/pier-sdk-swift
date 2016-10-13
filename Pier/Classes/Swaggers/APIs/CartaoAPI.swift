//
// CartaoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartaoAPI: APIBase {
    /**
     
     Realiza a altera\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter idStatusImpressao: (path) Id . 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarStatusImpressaoUsingPUT(idCartao idCartao: Int, idStatusImpressao: Int, completion: ((data: HistoricoImpressaoCartao?, error: ErrorType?) -> Void)) {
        alterarStatusImpressaoUsingPUTWithRequestBuilder(idCartao: idCartao, idStatusImpressao: idStatusImpressao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Realiza a altera\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o
     
     - PUT /api/cartoes/{idCartao}/impressao/{idStatusImpressao} 
     - Este m\u00C3\u00A9todo permite que uma Aplica\u00C3\u00A7\u00C3\u00A3o que realize a impress\u00C3\u00A3o de cart\u00C3\u00B5es possa indicar que um determinado idCartao fora impresso ou est\u00C3\u00A1 em processo de impress\u00C3\u00A3o. Para isso, basta informar o respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id) que deseja ter seu um determinado id_status_impressao atribu\u00C3\u00ADdo a ele. Por padr\u00C3\u00A3o, cart\u00C3\u00B5es provis\u00C3\u00B3rios ou que j\u00C3\u00A1 tenham sido inclu\u00C3\u00ADdos em um arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica ter\u00C3\u00A3o esta requisi\u00C3\u00A7\u00C3\u00A3o negada, se utilizada.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idStatusImpressaoCartao" : 123456789,
  "idCartao" : 123456789,
  "mensagemHistorico" : "aeiou",
  "dataHistorico" : "2000-01-23T04:56:07.000+0000",
  "id" : 123456789
}}]
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter idStatusImpressao: (path) Id . 

     - returns: RequestBuilder<HistoricoImpressaoCartao> 
     */
    public class func alterarStatusImpressaoUsingPUTWithRequestBuilder(idCartao idCartao: Int, idStatusImpressao: Int) -> RequestBuilder<HistoricoImpressaoCartao> {
        var path = "/api/cartoes/{idCartao}/impressao/{idStatusImpressao} "
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idStatusImpressao}", withString: "\(idStatusImpressao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<HistoricoImpressaoCartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os limites do Portador do Cart\u00C3\u00A3o
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarLimiteDisponibilidadeUsingGET(idCartao idCartao: Int, completion: ((data: LimiteDisponibilidade?, error: ErrorType?) -> Void)) {
        consultarLimiteDisponibilidadeUsingGETWithRequestBuilder(idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os limites do Portador do Cart\u00C3\u00A3o
     
     - GET /api/cartoes/{idCartao}/limites-disponibilidades
     - Este m\u00C3\u00A9todo permite consultar os Limites configurados para o Portador de um determinado Cart\u00C3\u00A3o, seja ele o titular da conta ou um adicional, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "limiteExterno" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaque" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelExterno" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaqueInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelMensal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "saldoDisponivelGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelCompraInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelExtra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteMensal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteExtra" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoPontosFidelidade" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteConsignado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteCompra" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<LimiteDisponibilidade> 
     */
    public class func consultarLimiteDisponibilidadeUsingGETWithRequestBuilder(idCartao idCartao: Int) -> RequestBuilder<LimiteDisponibilidade> {
        var path = "/api/cartoes/{idCartao}/limites-disponibilidades"
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LimiteDisponibilidade>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados do Portador do Cart\u00C3\u00A3o
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarPortadorUsingGET(idCartao idCartao: Int, completion: ((data: Portador?, error: ErrorType?) -> Void)) {
        consultarPortadorUsingGETWithRequestBuilder(idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados do Portador do Cart\u00C3\u00A3o
     
     - GET /api/cartoes/{idCartao}/portadores
     - Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es do Portador de um determinado Cart\u00C3\u00A3o a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idPessoa" : 123456789,
  "dataCancelamentoPortador" : "2000-01-23T04:56:07.000+0000",
  "idConta" : 123456789,
  "idProduto" : 123456789,
  "idParentesco" : 123456789,
  "dataCadastroPortador" : "2000-01-23T04:56:07.000+0000",
  "nomeImpresso" : "aeiou",
  "flagAtivo" : 123,
  "tipoPortador" : "aeiou"
}}]
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<Portador> 
     */
    public class func consultarPortadorUsingGETWithRequestBuilder(idCartao idCartao: Int) -> RequestBuilder<Portador> {
        var path = "/api/cartoes/{idCartao}/portadores"
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Portador>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Cart\u00C3\u00A3o
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET(idCartao idCartao: Int, completion: ((data: Cartao?, error: ErrorType?) -> Void)) {
        consultarUsingGETWithRequestBuilder(idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Cart\u00C3\u00A3o
     
     - GET /api/cartoes/{idCartao}
     - Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es b\u00C3\u00A1sicas de um determinado Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "dataStatusCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "idConta" : 123456789,
  "codigoDesbloqueio" : "aeiou",
  "idEstagioCartao" : 123456789,
  "arquivoImpressao" : "aeiou",
  "numeroCartao" : "aeiou",
  "idPessoa" : 123456789,
  "idProduto" : 123456789,
  "flagProvisorio" : 123,
  "dataValidade" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "idStatusCartao" : 123456789,
  "dataEstagioCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "flagImpressaoOrigemComercial" : 123,
  "id" : 123456789,
  "nomeImpresso" : "aeiou",
  "dataImpressao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "dataGeracao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tipoPortador" : "aeiou"
}}]
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<Cartao> 
     */
    public class func consultarUsingGETWithRequestBuilder(idCartao idCartao: Int) -> RequestBuilder<Cartao> {
        var path = "/api/cartoes/{idCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Cartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Realiza o desbloqueio de um determinado Cart\u00C3\u00A3o
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func desbloquearUsingPUT(idCartao idCartao: Int, completion: ((data: Cartao?, error: ErrorType?) -> Void)) {
        desbloquearUsingPUTWithRequestBuilder(idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Realiza o desbloqueio de um determinado Cart\u00C3\u00A3o
     
     - PUT /api/cartoes/{idCartao}/desbloqueio
     - Este m\u00C3\u00A9todo permite que seja desbloqueado um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "dataStatusCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "idConta" : 123456789,
  "codigoDesbloqueio" : "aeiou",
  "idEstagioCartao" : 123456789,
  "arquivoImpressao" : "aeiou",
  "numeroCartao" : "aeiou",
  "idPessoa" : 123456789,
  "idProduto" : 123456789,
  "flagProvisorio" : 123,
  "dataValidade" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "idStatusCartao" : 123456789,
  "dataEstagioCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "flagImpressaoOrigemComercial" : 123,
  "id" : 123456789,
  "nomeImpresso" : "aeiou",
  "dataImpressao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "dataGeracao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tipoPortador" : "aeiou"
}}]
     
     - parameter idCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<Cartao> 
     */
    public class func desbloquearUsingPUTWithRequestBuilder(idCartao idCartao: Int) -> RequestBuilder<Cartao> {
        var path = "/api/cartoes/{idCartao}/desbloqueio"
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Cartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os Cart\u00C3\u00B5es gerados pelo Emissor
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). (optional)
     - parameter idStatusCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
     - parameter idEstagioCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). (optional)
     - parameter idConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o cart\u00C3\u00A3o pertence (id) (optional)
     - parameter idProduto: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter tipoPortador: (query) Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional). (optional)
     - parameter numeroCartao: (query) Apresenta o n\u00C3\u00BAmero do cart\u00C3\u00A3o. (optional)
     - parameter nomeImpresso: (query) Apresenta o nome impresso no cart\u00C3\u00A3o. (optional)
     - parameter dataGeracao: (query) Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
     - parameter dataStatusCartao: (query) Apresenta a data em que o idStatusCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
     - parameter dataEstagioCartao: (query) Apresenta a data em que o idEstagioCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
     - parameter dataValidade: (query) Apresenta a data de validade do cart\u00C3\u00A3o em formato yyyy-MM, quando houver. (optional)
     - parameter dataImpressao: (query) Apresenta a data em que o cart\u00C3\u00A3o fora impresso, caso impress\u00C3\u00A3o em loja, ou a data em que ele fora inclu\u00C3\u00ADdo no arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica. (optional)
     - parameter arquivoImpressao: (query) Apresenta o nome do arquivo onde o cart\u00C3\u00A3o fora inclu\u00C3\u00ADdo para impress\u00C3\u00A3o por uma gr\u00C3\u00A1fica, quando houver. (optional)
     - parameter flagImpressaoOrigemComercial: (query) Quando ativa, indica que o cart\u00C3\u00A3o fora impresso na Origem Comercial. (optional)
     - parameter flagProvisorio: (query) Quando ativa, indica que o cart\u00C3\u00A3o \u00C3\u00A9 provis\u00C3\u00B3rio. Ou seja, \u00C3\u00A9 um cart\u00C3\u00A3o para uso tempor\u00C3\u00A1rio quando se deseja permitir que o cliente transacione sem que ele tenha recebido um cart\u00C3\u00A3o definitivo. (optional)
     - parameter codigoDesbloqueio: (query) Apresenta um c\u00C3\u00B3digo espec\u00C3\u00ADfico para ser utilizado como vari\u00C3\u00A1vel no processo de desbloqueio do cart\u00C3\u00A3o para emissores que querem usar esta funcionalidade. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET(id id: Int?, idStatusCartao: Int?, idEstagioCartao: Int?, idConta: Int?, idPessoa: Int?, idProduto: Int?, tipoPortador: String?, numeroCartao: String?, nomeImpresso: String?, dataGeracao: NSDate?, dataStatusCartao: NSDate?, dataEstagioCartao: NSDate?, dataValidade: String?, dataImpressao: NSDate?, arquivoImpressao: String?, flagImpressaoOrigemComercial: Int?, flagProvisorio: Int?, codigoDesbloqueio: String?, page: Int?, limit: Int?, completion: ((data: PageCartoes?, error: ErrorType?) -> Void)) {
        listarUsingGETWithRequestBuilder(id: id, idStatusCartao: idStatusCartao, idEstagioCartao: idEstagioCartao, idConta: idConta, idPessoa: idPessoa, idProduto: idProduto, tipoPortador: tipoPortador, numeroCartao: numeroCartao, nomeImpresso: nomeImpresso, dataGeracao: dataGeracao, dataStatusCartao: dataStatusCartao, dataEstagioCartao: dataEstagioCartao, dataValidade: dataValidade, dataImpressao: dataImpressao, arquivoImpressao: arquivoImpressao, flagImpressaoOrigemComercial: flagImpressaoOrigemComercial, flagProvisorio: flagProvisorio, codigoDesbloqueio: codigoDesbloqueio, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Cart\u00C3\u00B5es gerados pelo Emissor
     
     - GET /api/cartoes
     - Este m\u00C3\u00A9todo permite que sejam listados os cart\u00C3\u00B5es existentes na base do emissor.
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
    "dataStatusCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "idConta" : 123456789,
    "codigoDesbloqueio" : "aeiou",
    "idEstagioCartao" : 123456789,
    "arquivoImpressao" : "aeiou",
    "numeroCartao" : "aeiou",
    "idPessoa" : 123456789,
    "idProduto" : 123456789,
    "flagProvisorio" : 123,
    "dataValidade" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "idStatusCartao" : 123456789,
    "dataEstagioCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "flagImpressaoOrigemComercial" : 123,
    "id" : 123456789,
    "nomeImpresso" : "aeiou",
    "dataImpressao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "dataGeracao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "tipoPortador" : "aeiou"
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
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). (optional)
     - parameter idStatusCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
     - parameter idEstagioCartao: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). (optional)
     - parameter idConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o cart\u00C3\u00A3o pertence (id) (optional)
     - parameter idProduto: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter tipoPortador: (query) Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional). (optional)
     - parameter numeroCartao: (query) Apresenta o n\u00C3\u00BAmero do cart\u00C3\u00A3o. (optional)
     - parameter nomeImpresso: (query) Apresenta o nome impresso no cart\u00C3\u00A3o. (optional)
     - parameter dataGeracao: (query) Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
     - parameter dataStatusCartao: (query) Apresenta a data em que o idStatusCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
     - parameter dataEstagioCartao: (query) Apresenta a data em que o idEstagioCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
     - parameter dataValidade: (query) Apresenta a data de validade do cart\u00C3\u00A3o em formato yyyy-MM, quando houver. (optional)
     - parameter dataImpressao: (query) Apresenta a data em que o cart\u00C3\u00A3o fora impresso, caso impress\u00C3\u00A3o em loja, ou a data em que ele fora inclu\u00C3\u00ADdo no arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica. (optional)
     - parameter arquivoImpressao: (query) Apresenta o nome do arquivo onde o cart\u00C3\u00A3o fora inclu\u00C3\u00ADdo para impress\u00C3\u00A3o por uma gr\u00C3\u00A1fica, quando houver. (optional)
     - parameter flagImpressaoOrigemComercial: (query) Quando ativa, indica que o cart\u00C3\u00A3o fora impresso na Origem Comercial. (optional)
     - parameter flagProvisorio: (query) Quando ativa, indica que o cart\u00C3\u00A3o \u00C3\u00A9 provis\u00C3\u00B3rio. Ou seja, \u00C3\u00A9 um cart\u00C3\u00A3o para uso tempor\u00C3\u00A1rio quando se deseja permitir que o cliente transacione sem que ele tenha recebido um cart\u00C3\u00A3o definitivo. (optional)
     - parameter codigoDesbloqueio: (query) Apresenta um c\u00C3\u00B3digo espec\u00C3\u00ADfico para ser utilizado como vari\u00C3\u00A1vel no processo de desbloqueio do cart\u00C3\u00A3o para emissores que querem usar esta funcionalidade. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageCartoes> 
     */
    public class func listarUsingGETWithRequestBuilder(id id: Int?, idStatusCartao: Int?, idEstagioCartao: Int?, idConta: Int?, idPessoa: Int?, idProduto: Int?, tipoPortador: String?, numeroCartao: String?, nomeImpresso: String?, dataGeracao: NSDate?, dataStatusCartao: NSDate?, dataEstagioCartao: NSDate?, dataValidade: String?, dataImpressao: NSDate?, arquivoImpressao: String?, flagImpressaoOrigemComercial: Int?, flagProvisorio: Int?, codigoDesbloqueio: String?, page: Int?, limit: Int?) -> RequestBuilder<PageCartoes> {
        let path = "/api/cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "idStatusCartao": idStatusCartao,
            "idEstagioCartao": idEstagioCartao,
            "idConta": idConta,
            "idPessoa": idPessoa,
            "idProduto": idProduto,
            "tipoPortador": tipoPortador,
            "numeroCartao": numeroCartao,
            "nomeImpresso": nomeImpresso,
            "dataGeracao": dataGeracao,
            "dataStatusCartao": dataStatusCartao,
            "dataEstagioCartao": dataEstagioCartao,
            "dataValidade": dataValidade,
            "dataImpressao": dataImpressao,
            "arquivoImpressao": arquivoImpressao,
            "flagImpressaoOrigemComercial": flagImpressaoOrigemComercial,
            "flagProvisorio": flagProvisorio,
            "codigoDesbloqueio": codigoDesbloqueio,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageCartoes>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
