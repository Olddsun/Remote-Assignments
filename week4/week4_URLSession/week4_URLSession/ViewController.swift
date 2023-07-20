//
//  ViewController.swift
//  week4_URLSession
//
//  Created by chihsun on 2023/7/20.
//

import UIKit

class ViewController: UIViewController {

    //制定codable的struct，decode時會需要用到
    struct StationData: Codable {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    
    @IBOutlet weak var StationIDLabel: UILabel!
    @IBOutlet weak var StationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        fetchdataFromAPI()
        
        
    }

    
    
    func fetchdataFromAPI() {
        //宣告URL，也就是資料來源，因為他可能是空的，後面要加!
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        
        //處理URL(這邊我先當做公式記下來）
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                
                let decoder = JSONDecoder()
                // JSONdecoder的decode的method
                if let stationData = try? decoder.decode(StationData.self, from: data) {
                        DispatchQueue.main.async {
                            self.StationIDLabel.text = "\(stationData.stationID)"
                            self.StationNameLabel.text = "\(stationData.stationName)"
                            self.addressLabel.text = "\(stationData.stationAddress)"
                    }
                } else {
                    print("Error data.")
                }
            }
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
        }
        task.resume()
        
    }
    
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//      let json = {
//            "stationID": "R16",
//            "stationName": "Zuoying",
//            "stationAddress": "高雄市左營區高鐵路107號地下一層"
//            }
        
//        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
//        let session = URLSession(configuration: .default)
//
//        //這行我不確定需不需要？
////        let request = URLRequest(url: url)
//
//        let task = session.dataTask(with: url)
//        URLSession.shared.dataTask(with: url) {
//            (data, response, error) in
//
//        if let data = data {
//            if let postResponse = String(data: data, encoding: .utf8) {
//                print(postResponse)
//            }
//        }
//
//        if let error = error {
//            print("Error: \(error.localizedDescription)")
//                return
//            }
//    }
//
//        task.resume()
//
        
}
//
//                DispatchQueue.main.async {
//                    self.StationIDLabel.text = "\(stationData.stationID)"
//                    self.StationNameLabel.text = "\(stationData.stationName)"
//                    self.addressLabel.text = "\(stationData.stationAddress)"
//                }
            
        
    


