//
//  LotteryAPIManager.swift
//  LotteryApp
//
//  Created by 은서우 on 2024/01/17.
//

import UIKit
import Alamofire

struct LotteryAPIManager {
    func callRequest(num: String, completionHandler: @escaping (String) -> Void) {
        let url = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=\(num)"
        
        AF.request(url, method: .get).responseDecodable(of: Lotto.self) { response in
                switch response.result {
                case .success(let success):
                    
                    //self.dateLabel.text = success.drwNoDate
                    completionHandler(success.drwNoDate)
                    
                case .failure(let failure):
                    print("오류 발생")
                }
            }
    }
}
