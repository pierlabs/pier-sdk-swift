//
// StatusCartoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusCartoAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarStatusCartaoUsingGET(idStatusCartao idStatusCartao: Int, completion: ((data: StatusCarto?, error: ErrorType?) -> Void)) {
        consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao: idStatusCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
     
     - GET /api/status-cartoes/{idStatusCartao}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).  
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "flagExcecaoBandeira" : 123,
  "idStatusDestinoDesbloqueio" : 123456789,
  "flagCancelaConta" : 123,
  "nome" : "aeiou",
  "flagAlteraStatus" : 123,
  "flagEmiteProvisorio" : 123,
  "idStatusDestinoConta" : 123456789,
  "flagDestinoTransferencia" : 123,
  "flagCancelaNoDesbloqueio" : 123,
  "flagReemiteCartao" : 123,
  "flagCadastroNovaSenha" : 123,
  "id" : 123456789,
  "flagCobraTarifa" : 123,
  "flagOrigemTransferencia" : 123
}}]
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<StatusCarto> 
     */
    public class func consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao idStatusCartao: Int) -> RequestBuilder<StatusCarto> {
        var path = "/api/status-cartoes/{idStatusCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusCartao}", withString: "\(idStatusCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusCarto>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter flagAlteraStatus: (query) Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
     - parameter flagCancelaNoDesbloqueio: (query) Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
     - parameter flagCancelaConta: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, e tal cart\u00C3\u00A3o seja de um titular (portador = 1), ter\u00C3\u00A3o a conta a qual o cart\u00C3\u00A3o pertence cancelada. (optional)
     - parameter idStatusDestinoConta: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica. (optional)
     - parameter flagCobraTarifa: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor. (optional)
     - parameter flagReemiteCartao: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem este status atribu\u00C3\u00ADdo ter\u00C3\u00A3o um novo cart\u00C3\u00A3o gerado para o portador, para a mesma conta, automaticamente. (optional)
     - parameter flagEmiteProvisorio: (query) Quando ativa, indica que poder\u00C3\u00A1 ser criado um novo cart\u00C3\u00A3o provis\u00C3\u00B3rio para o portador. (optional)
     - parameter flagCadastroNovaSenha: (query) Quando ativa, indica que a senha cadastrada ser\u00C3\u00A1 exclu\u00C3\u00ADda no momento do Bloqueio do cart\u00C3\u00A3o com um idStatusCartao que possua essa caracter\u00C3\u00ADstica, sendo ent\u00C3\u00A3o necess\u00C3\u00A1rio o cadastro de uma nova senha. (optional)
     - parameter flagOrigemTransferencia: (query) Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos para outros cart\u00C3\u00B5es. (optional)
     - parameter flagDestinoTransferencia: (query) Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem receber transfer\u00C3\u00AAncias de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos oriundos de outros cart\u00C3\u00B5es. (optional)
     - parameter flagExcecaoBandeira: (query) Quando ativa, indica que os Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo dever\u00C3\u00A3o ter a respectiva informa\u00C3\u00A7\u00C3\u00A3o de mudan\u00C3\u00A7a de status inclu\u00C3\u00ADda no arquivo de exce\u00C3\u00A7\u00C3\u00A3o da Bandeira, a fim de manter atualizado o cadastro do cart\u00C3\u00A3o nela para nortear o que fazer com as transa\u00C3\u00A7\u00C3\u00B5es quando o autorizador estiver indispon\u00C3\u00ADvel. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarStatusCartoesUsingGET(id id: Int?, nome: String?, flagAlteraStatus: Int?, flagCancelaNoDesbloqueio: Int?, idStatusDestinoDesbloqueio: Int?, flagCancelaConta: Int?, idStatusDestinoConta: Int?, flagCobraTarifa: Int?, flagReemiteCartao: Int?, flagEmiteProvisorio: Int?, flagCadastroNovaSenha: Int?, flagOrigemTransferencia: Int?, flagDestinoTransferencia: Int?, flagExcecaoBandeira: Int?, page: Int?, limit: Int?, completion: ((data: ListaDeStatusCartes?, error: ErrorType?) -> Void)) {
        listarStatusCartoesUsingGETWithRequestBuilder(id: id, nome: nome, flagAlteraStatus: flagAlteraStatus, flagCancelaNoDesbloqueio: flagCancelaNoDesbloqueio, idStatusDestinoDesbloqueio: idStatusDestinoDesbloqueio, flagCancelaConta: flagCancelaConta, idStatusDestinoConta: idStatusDestinoConta, flagCobraTarifa: flagCobraTarifa, flagReemiteCartao: flagReemiteCartao, flagEmiteProvisorio: flagEmiteProvisorio, flagCadastroNovaSenha: flagCadastroNovaSenha, flagOrigemTransferencia: flagOrigemTransferencia, flagDestinoTransferencia: flagDestinoTransferencia, flagExcecaoBandeira: flagExcecaoBandeira, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
     
     - GET /api/status-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "statusCartoes" : [ {
    "flagExcecaoBandeira" : 123,
    "idStatusDestinoDesbloqueio" : 123456789,
    "flagCancelaConta" : 123,
    "nome" : "aeiou",
    "flagAlteraStatus" : 123,
    "flagEmiteProvisorio" : 123,
    "idStatusDestinoConta" : 123456789,
    "flagDestinoTransferencia" : 123,
    "flagCancelaNoDesbloqueio" : 123,
    "flagReemiteCartao" : 123,
    "flagCadastroNovaSenha" : 123,
    "id" : 123456789,
    "flagCobraTarifa" : 123,
    "flagOrigemTransferencia" : 123
  } ]
}}]
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter flagAlteraStatus: (query) Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
     - parameter flagCancelaNoDesbloqueio: (query) Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
     - parameter flagCancelaConta: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, e tal cart\u00C3\u00A3o seja de um titular (portador = 1), ter\u00C3\u00A3o a conta a qual o cart\u00C3\u00A3o pertence cancelada. (optional)
     - parameter idStatusDestinoConta: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica. (optional)
     - parameter flagCobraTarifa: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor. (optional)
     - parameter flagReemiteCartao: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem este status atribu\u00C3\u00ADdo ter\u00C3\u00A3o um novo cart\u00C3\u00A3o gerado para o portador, para a mesma conta, automaticamente. (optional)
     - parameter flagEmiteProvisorio: (query) Quando ativa, indica que poder\u00C3\u00A1 ser criado um novo cart\u00C3\u00A3o provis\u00C3\u00B3rio para o portador. (optional)
     - parameter flagCadastroNovaSenha: (query) Quando ativa, indica que a senha cadastrada ser\u00C3\u00A1 exclu\u00C3\u00ADda no momento do Bloqueio do cart\u00C3\u00A3o com um idStatusCartao que possua essa caracter\u00C3\u00ADstica, sendo ent\u00C3\u00A3o necess\u00C3\u00A1rio o cadastro de uma nova senha. (optional)
     - parameter flagOrigemTransferencia: (query) Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos para outros cart\u00C3\u00B5es. (optional)
     - parameter flagDestinoTransferencia: (query) Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem receber transfer\u00C3\u00AAncias de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos oriundos de outros cart\u00C3\u00B5es. (optional)
     - parameter flagExcecaoBandeira: (query) Quando ativa, indica que os Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo dever\u00C3\u00A3o ter a respectiva informa\u00C3\u00A7\u00C3\u00A3o de mudan\u00C3\u00A7a de status inclu\u00C3\u00ADda no arquivo de exce\u00C3\u00A7\u00C3\u00A3o da Bandeira, a fim de manter atualizado o cadastro do cart\u00C3\u00A3o nela para nortear o que fazer com as transa\u00C3\u00A7\u00C3\u00B5es quando o autorizador estiver indispon\u00C3\u00ADvel. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<ListaDeStatusCartes> 
     */
    public class func listarStatusCartoesUsingGETWithRequestBuilder(id id: Int?, nome: String?, flagAlteraStatus: Int?, flagCancelaNoDesbloqueio: Int?, idStatusDestinoDesbloqueio: Int?, flagCancelaConta: Int?, idStatusDestinoConta: Int?, flagCobraTarifa: Int?, flagReemiteCartao: Int?, flagEmiteProvisorio: Int?, flagCadastroNovaSenha: Int?, flagOrigemTransferencia: Int?, flagDestinoTransferencia: Int?, flagExcecaoBandeira: Int?, page: Int?, limit: Int?) -> RequestBuilder<ListaDeStatusCartes> {
        let path = "/api/status-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "flagAlteraStatus": flagAlteraStatus,
            "flagCancelaNoDesbloqueio": flagCancelaNoDesbloqueio,
            "idStatusDestinoDesbloqueio": idStatusDestinoDesbloqueio,
            "flagCancelaConta": flagCancelaConta,
            "idStatusDestinoConta": idStatusDestinoConta,
            "flagCobraTarifa": flagCobraTarifa,
            "flagReemiteCartao": flagReemiteCartao,
            "flagEmiteProvisorio": flagEmiteProvisorio,
            "flagCadastroNovaSenha": flagCadastroNovaSenha,
            "flagOrigemTransferencia": flagOrigemTransferencia,
            "flagDestinoTransferencia": flagDestinoTransferencia,
            "flagExcecaoBandeira": flagExcecaoBandeira,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ListaDeStatusCartes>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}