//
//  DataRequest.swift
//  News
//
//  Created by 宋文通 on 2018/6/26.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import Alamofire
extension DataRequest{
    //基础转换
    func convert<T: Codable>(finished: @escaping (T)->Void,
                             failed: @escaping (NetWorkingError)->Void) -> Void {
        response { (response) in
            if response.error != nil{
                failed(NetWorkingError.networkError())//有网络错误
                return
            }
            
            guard let data = response.data else{
                failed(NetWorkingError.unknownError())//没有数据,未知错误
                return
            }
            do{
                let result = try JSONDecoder().decode(T.self, from: data)//类型转换
                finished(result)
            }catch{
                newsPrint("解析失败: \(String(describing: response.request?.url)) | ResponseString: " + (String(data: data, encoding: .utf8) ?? ""))
                newsPrint("解析error:\(error)")
                failed(NetWorkingError.analyzeFailed())//解析失败
                return
            }
        }
    }
    //return code检测
    func convertDetailType<T:Codable>(result: @escaping (T)->Void,
                                    failed: @escaping (NetWorkingError)->Void) -> Void{
        convert(finished: { [weak self](common:CommonResponse<EmptyModel>) in
            guard common.code == ReturnCode.success.rawValue else{//return Code异常
                let error = NetWorkingError.init(type: NetworkingErrorType.returnCode(common.code), code: common.code.convertToReturnCode())
                failed(error)
                return
            }
            self?.convert(finished: { (convert2:CommonResponse<T>) in
                result(convert2.responseData)
            }, failed: failed)
            
        }, failed: failed)
    }
}
