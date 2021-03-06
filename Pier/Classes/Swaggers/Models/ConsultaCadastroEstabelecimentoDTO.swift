//
// ConsultaCadastroEstabelecimentoDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{consulta_cadastro_estabelecimento_d_t_o_description}}} */
public class ConsultaCadastroEstabelecimentoDTO: JSONEncodable {

    public enum Status: String { 
        case Ok = "OK"
        case Nok = "NOK"
    }
    
    public enum TipoEntidade: String { 
        case Ativo = "ATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** {{{consulta_cadastro_estabelecimento_d_t_o_data_hora_consulta_value}}} */
    public var dataHoraConsulta: String?
    /** {{{consulta_cadastro_estabelecimento_d_t_o_status_value}}} */
    public var status: Status?
    /** {{{consulta_cadastro_estabelecimento_d_t_o_tipo_entidade_value}}} */
    public var tipoEntidade: TipoEntidade?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataHoraConsulta"] = self.dataHoraConsulta
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["tipoEntidade"] = self.tipoEntidade?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
