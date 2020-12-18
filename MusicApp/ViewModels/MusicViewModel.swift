//
//  MusicViewModel.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import UIKit

class MusicViewModel: NSObject {
     var musicAPI : MusicAPIService!
    
    var artistData : ArtistModel! {
           didSet {
               self.bindMusicViewModelToController()
           }
       }
       
       var bindMusicViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.musicAPI = MusicAPIService()
        callMusicAPi()
    }
    
    func callMusicAPi()  {
        self.musicAPI.getArtistdata(completion: { (artData) in
            self.artistData = artData
            print("Music date: \(artData)")

        })
    }    
}
