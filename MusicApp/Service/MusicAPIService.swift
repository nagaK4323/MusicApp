//
//  MusicAPIService.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import Foundation

public enum ResponseResult<T> {
    case success(T)
    case failure(Error)
}

class MusicAPIService :  NSObject {
    
    private let musicURL = URL(string: "https://itunes.apple.com/lookup?amgArtistId=468749&entity=album&limit=5")!
    
    func getArtistdata(completion : @escaping (ArtistModel) -> ()){
        
        
        URLSession.shared.dataTask(with: musicURL) { (data, urlResponse, error) in
            
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                do {
                    
                    let artistdata = try! jsonDecoder.decode(ArtistModel.self, from: data)
                    print("data : \(artistdata)")
                    
                    completion(artistdata)
                } catch  {
                    print(error)
                }
                
            }
        }.resume()
    }
    
    
    
   public static func downloadImage(url: URL, completion: @escaping (ResponseResult<Data>) -> Void) {
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async() {
                completion(.success(data))
            }
        }
    }
}
