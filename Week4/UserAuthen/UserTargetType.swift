import Foundation

import Moya


enum UserTargetType {
    case getUserInfo(memberId: String)
    case signUp(request: SignUpRequestModel)
}

extension UserTargetType: TargetType {
//    말 그대로 Base URL을 적어주면 됩니다. Config. baseURL을 통해서 접근을 하면 됩니다
    var baseURL: URL {
        return URL(string: Config.baseURL)!
    }
    
//    회원가입에 Path를 추가적으로 적어줍니다. 여기서는 member/join 이겠죠!
    var path: String {
        switch self {
        case .signUp:
            return "/member/join"
        case .getUserInfo(memberId: let memberId):
            return "/member/info"
        }
    }
    
//    http method를 적어주면 됩니다. 명세서에 따라 post를 입력해줍니다
    var method: Moya.Method {
        switch self {
        case .signUp:
            return .post
        case .getUserInfo:
            return .get
        }
    }
    
//    어떤 방식으로 통신할 것인지를 정해주야 합니다. 우리는 Encodable한 body를 요청시 보내줄 것이기 때문에
//     .requestJSONEncodable에 SignUpRequsetModel 타입의 객체를 인자로 넣어줍니다
    var task: Moya.Task {
        switch self {
        case .signUp(let request):
            return .requestJSONEncodable(request)
        case .getUserInfo:
            return .requestPlain
        }
    }
    
//    Request Header에 들어갈 내용을 적어줍니다. 저희는 Content-type이 JSON이라는 정보를 보내봅시다!
    var headers: [String : String]? {
        switch self {
        case.signUp:
            return ["Content-Type": "application/json"]
        case .getUserInfo(let memberId):
            return ["Content-Type": "application/json",
                    "memberId" : memberId]
        }
        
    }
}

